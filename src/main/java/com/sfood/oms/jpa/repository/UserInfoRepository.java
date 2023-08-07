package com.sfood.oms.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sfood.oms.entity.UserInfo;

@Repository
public interface UserInfoRepository extends JpaRepository <UserInfo, Integer> {

}
