<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>演示：jQuery在线选座订座（影院版）</title>
    <script src="/cinema/js/jquery-3.4.1.min.js"></script>
    <script src="/cinema/js/jquery.seat-charts.min.js"></script>
    <style type="text/css">
        .demo {
            width: 700px;
            margin: 40px auto 0 auto;
            min-height: 450px;
        }

        @media screen and (max-width: 360px) {
            .demo {
                width: 340px
            }
        }

        .front {
            width: 300px;
            margin: 5px 32px 45px 32px;
            background-color: #f0f0f0;
            color: #666;
            text-align: center;
            padding: 3px;
            border-radius: 5px;
        }

        .booking-details {
            float: right;
            position: relative;
            width: 200px;
            height: 545px;
        }

        .booking-details h3 {
            margin: 5px 5px 0 0;
            font-size: 16px;
        }

        .booking-details p {
            line-height: 18px;
            font-size: 16px;
            color: #999
        }

        .booking-details p span {
            color: #666
        }

        div.seatCharts-cell {
            color: #182C4E;
            height: 25px;
            width: 25px;
            line-height: 25px;
            margin: 3px;
            float: left;
            text-align: center;
            outline: none;
            font-size: 13px;
        }

        div.seatCharts-seat {
            color: #fff;
            cursor: pointer;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
        }

        div.seatCharts-row {
            height: 35px;
        }

        div.seatCharts-seat.available {
            background-color: #B9DEA0;
        }

        div.seatCharts-seat.focused {
            background-color: #76B474;
            border: none;
        }

        div.seatCharts-seat.selected {
            background-color: #E6CAC4;
        }

        div.seatCharts-seat.unavailable {
            background-color: #472B34;
            cursor: not-allowed;
        }

        div.seatCharts-container {
            border-right: 1px dotted #adadad;
            width: 400px;
            padding: 45px;
            float: left;
        }

        div.seatCharts-legend {
            padding-left: 0px;
            position: absolute;
            bottom: 16px;
        }

        ul{
            list-style-type: none;
        }

        ul.seatCharts-legendList {
            padding-left: 0px;
        }

        .seatCharts-legendItem {
            float: left;
            width: 90px;
            margin-top: 10px;
            line-height: 2;
        }

        span.seatCharts-legendDescription {
            margin-left: 5px;
            line-height: 30px;
        }

        .checkout-button {
            display: block;
            width: 80px;
            height: 24px;
            line-height: 20px;
            margin: 10px auto;
            border: 1px solid #999;
            font-size: 14px;
            cursor: pointer;
            background-color: #f03d37;
            color: white;
            border-radius: 5%;
        }

        #selected-seats {
            max-height: 150px;
            overflow-y: auto;
            overflow-x: hidden;
            width: 200px;
        }

        #selected-seats li {
            float: left;
            width: 72px;
            height: 26px;
            line-height: 26px;
            border: 1px solid #d3d3d3;
            background: #f7f7f7;
            margin: 6px;
            font-size: 14px;
            font-weight: bold;
            text-align: center
        }
    </style>

</head>

<body>
<div id="main">
    <div class="demo">
        <div id="seat-map">
            <div class="front">屏幕</div>
        </div>
        <div class="booking-details">
            <p>影片：<span>${movieSeatInfo.movieName}</span></p>
            <p>影院：${movieSeatInfo.cinemaName}</p>
            <P>影厅：${movieSeatInfo.roomName}</P>
            <p>时间：<span>${movieSeatInfo.showTime.substring(5,5)} ${movieSeatInfo.startTime}</span></p>
            <p>时长：${movieSeatInfo.movieTime}</p>
            <p>票价：￥${movieSeatInfo.price}/张</p>
            <p>座位：</p>
            <ul id="selected-seats"></ul>
            <p>票数：<span id="counter">0</span></p>
            <p>总计：<b>￥<span id="total">0</span></b></p>

            <button class="checkout-button">确定购买</button>

            <div id="legend"></div>
        </div>
        <div style="clear:both"></div>
    </div>

    <br/>
</div>

<script type="text/javascript">
    var price = ${movieSeatInfo.price}; //票价
    var chosenSeat = {};
    $(document).ready(function () {
        var $cart = $('#selected-seats'), //座位区
            $counter = $('#counter'), //票数
            $total = $('#total'); //总计金额

        var sc = $('#seat-map').seatCharts({
            //座位图
            map: [
                ${movieSeatInfo.roomMap}
            ],
            naming: {
                top: false,
                getLabel: function (character, row, column) {
                    return column;
                }
            },
            legend: { //定义图例
                node: $('#legend'),
                items: [
                    ['a', 'available', '可选座'],
                    ['a', 'unavailable', '已售出']
                ]
            },
            click: function () { //点击事件
                if (this.status() == 'available') { //可选座
                    if (parseInt($counter.text()) <= 5){
                        $('<li>' + (this.settings.row + 1) + '排' + this.settings.label + '座</li>')
                            .attr('id', 'cart-item-' + this.settings.id)
                            .data('seatId', this.settings.id)
                            .appendTo($cart);

                        $counter.text(sc.find('selected').length + 1);
                        $total.text((recalculateTotal(sc) + price).toFixed(2));

                        return 'selected';
                    }else{
                        alert("一次最多只能购买6张票");
                        return 'available';
                    }

                } else if (this.status() == 'selected') { //已选中
                    //更新数量
                    $counter.text(sc.find('selected').length - 1);
                    //更新总计
                    $total.text((recalculateTotal(sc) - price).toFixed(2));

                    //删除已预订座位
                    $('#cart-item-' + this.settings.id).remove();

                    //可选座
                    return 'available';
                } else if (this.status() == 'unavailable') { //已售出
                    return 'unavailable';
                } else {
                    return this.style();
                }
            }
        });
        //已售出的座位
        sc.get([${movieSeatInfo.unavailableSeat}]).status('unavailable');

    });

    //计算总金额
    function recalculateTotal(sc) {
        var total = 0;
        sc.find('selected').each(function () {
            total += price;
        });

        return total;
    }

    $(".checkout-button").click(function () {
        var chosenSeat = $("#selected-seats").children("li");
        var len = chosenSeat.length;
        var str = "";
        var seat = "";
        var dataStr = {};
        $.each(chosenSeat,function (i) {
            str += ",'" + $(this).attr("id").substring(10) + "'";
            seat += $(this).text() + " ";
        })

        dataStr.totalCount = $("#counter").text();
        dataStr.totalPrice = parseFloat($("#total").text());
        dataStr.unavailableSeat = str;
        dataStr.seat = seat;
        dataStr.listId = ${movieSeatInfo.listId};
        var data = JSON.stringify(dataStr);
        console.log(data);
        $.ajax({
            type:"post",
            url:"/cinema/save",
            contentType:"application/json",
            data:data,
            success:function (orderId) {
                if (orderId == -1){
                    alert("要先登录哦");
                    return;
                }
                window.location.href = "/cinema/pay/" + orderId;
            }
        })
        //console.log(chosenSeat)
    })

</script>
</body>
</html>