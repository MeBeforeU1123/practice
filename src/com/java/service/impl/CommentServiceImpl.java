package com.java.service.impl;

import com.java.base.BaseDao;
import com.java.base.BaseServiceImpl;
import com.java.mapper.CommentMapper;
import com.java.po.Comment;
import com.java.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl extends BaseServiceImpl<Comment> implements CommentService {

    @Autowired
    private CommentMapper commentMapper;

    @Override
    public BaseDao<Comment> getBaseDao() {
        return commentMapper;
    }
}
