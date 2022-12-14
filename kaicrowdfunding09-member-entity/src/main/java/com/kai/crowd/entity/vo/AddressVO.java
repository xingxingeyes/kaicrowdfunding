package com.kai.crowd.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AddressVO implements Serializable {
    private static final long serialVersionUID = 5217293433294253745L;
    private Integer id;
    private String receiveName;
    private String phoneNum;
    private String address;
    private Integer memberId;
}
