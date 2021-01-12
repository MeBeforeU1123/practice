package com.java.service.impl;

import com.java.base.BaseDao;
import com.java.base.BaseServiceImpl;
import com.java.mapper.NewsMapper;
import com.java.po.News;
import com.java.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewsServiceImpl extends BaseServiceImpl<News> implements NewsService {

    @Autowired
    private NewsMapper newsMapper;

    @Override
    public BaseDao<News> getBaseDao() {
        return newsMapper;
    }
}
