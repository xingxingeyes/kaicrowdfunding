package com.kai.crowd.service.api;

import com.kai.crowd.entity.vo.ProjectVO;

public interface ProjectService {
    void saveProject(ProjectVO projectVO, Integer memberId);
}
