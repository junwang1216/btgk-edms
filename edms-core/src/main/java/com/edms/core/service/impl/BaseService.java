package com.edms.core.service.impl;

import com.edms.core.dao.IBaseDao;
import org.springframework.beans.factory.annotation.Autowired;

public class BaseService {

    @Autowired
    protected IBaseDao baseDao;

}
