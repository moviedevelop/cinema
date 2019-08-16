package com.etc.dao;

import com.etc.pojo.Comments;

import java.util.List;

public interface CommentsMapper {

    int deleteByPrimaryKey(Integer commentId);

    int insert(Comments record);

    int insertSelective(Comments record);

    Comments selectByPrimaryKey(Integer commentId);

    int updateByPrimaryKeySelective(Comments record);

    int updateByPrimaryKeyWithBLOBs(Comments record);

    int updateByPrimaryKey(Comments record);

    int selectCount(Integer movieId);

    List<Comments> selectCommentLimit(Comments comments);
}