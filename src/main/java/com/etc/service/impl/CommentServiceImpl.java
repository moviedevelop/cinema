package com.etc.service.impl;

import com.etc.dao.CommentsMapper;
import com.etc.pojo.Comments;
import com.etc.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("commentService")
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentsMapper mapper;

    @Override
    public int deleteByPrimaryKey(Integer commentId) {
        return mapper.deleteByPrimaryKey(commentId);
    }

    @Override
    public int insert(Comments record) {
        return mapper.insert(record);
    }

    @Override
    public int insertSelective(Comments record) {
        return mapper.insertSelective(record);
    }

    @Override
    public Comments selectByPrimaryKey(Integer commentId) {
        return mapper.selectByPrimaryKey(commentId);
    }

    @Override
    public int updateByPrimaryKeySelective(Comments record) {
        return mapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKeyWithBLOBs(Comments record) {
        return mapper.updateByPrimaryKeyWithBLOBs(record);
    }

    @Override
    public int updateByPrimaryKey(Comments record) {
        return mapper.updateByPrimaryKey(record);
    }

    @Override
    public int selectCount(Integer movieId) {
        return mapper.selectCount(movieId);
    }

    @Override
    public List<Comments> selectCommentLimit(Comments comments) {
        return mapper.selectCommentLimit(comments);
    }


}
