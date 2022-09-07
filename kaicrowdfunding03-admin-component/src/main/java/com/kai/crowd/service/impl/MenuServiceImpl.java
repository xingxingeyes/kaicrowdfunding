package com.kai.crowd.service.impl;

import com.kai.crowd.entity.Menu;
import com.kai.crowd.entity.MenuExample;
import com.kai.crowd.mapper.MenuMapper;
import com.kai.crowd.service.api.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuServiceImpl implements MenuService {
    @Autowired
    private MenuMapper menuMapper;

    @Override
    public void saveMenu(Menu memu) {
        menuMapper.insert(memu);
    }

    @Override
    public void update(Menu memu) {
        // 由于pid没有传入，一定要使用有选择的更新，保证“pid”字段不会置空
        menuMapper.updateByPrimaryKeySelective(memu);
    }

    @Override
    public void remove(Integer id) {
        menuMapper.deleteByPrimaryKey(id);
    }

    @Override
    public List<Menu> getAll() {
        MenuExample example = new MenuExample();

        return  menuMapper.selectByExample(example);
    }
}
