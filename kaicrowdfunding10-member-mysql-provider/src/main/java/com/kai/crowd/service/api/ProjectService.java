package com.kai.crowd.service.api;

import com.kai.crowd.entity.vo.DetailProjectVO;
import com.kai.crowd.entity.vo.PortalTypeVO;
import com.kai.crowd.entity.vo.ProjectVO;

import java.util.List;

public interface ProjectService {
    void saveProject(ProjectVO projectVO, Integer memberId);

    List<PortalTypeVO> getPortalTypeVO();
    DetailProjectVO getDetailProjectVO(Integer projectId);
}
