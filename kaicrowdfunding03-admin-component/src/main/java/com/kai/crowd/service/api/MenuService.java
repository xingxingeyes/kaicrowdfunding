package com.kai.crowd.service.api;

import com.kai.crowd.entity.Menu;

import java.util.List;

public interface MenuService {

    List<Menu> getAll();

    void saveMenu(Menu memu);

    void update(Menu memu);

    void remove(Integer id);
}
