package com.core.service.impl;

import com.core.dao.IBaseDao;
import org.springframework.beans.factory.annotation.Autowired;

public class BaseService {

    @Autowired
    protected IBaseDao baseDao;

}
