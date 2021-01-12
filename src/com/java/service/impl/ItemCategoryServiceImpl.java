package com.java.service.impl;

import com.java.base.BaseDao;
import com.java.base.BaseServiceImpl;
import com.java.mapper.ItemCategoryMapper;
import com.java.po.ItemCategory;
import com.java.service.ItemCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ItemCategoryServiceImpl extends BaseServiceImpl<ItemCategory> implements ItemCategoryService {
    @Autowired
    ItemCategoryMapper itemCategoryMapper;

    @Override
    public BaseDao<ItemCategory> getBaseDao() {
        return itemCategoryMapper;
    }
}
