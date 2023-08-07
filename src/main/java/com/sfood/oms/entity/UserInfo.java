package com.sfood.oms.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name="USER_INFO")
public class UserInfo {
	
	@Id
	@Column(name = "USER_INFO_SEQ")
	private Integer UserInfoSeq;
	
	@Column(name = "USER_ID")
	private String userId;
}
