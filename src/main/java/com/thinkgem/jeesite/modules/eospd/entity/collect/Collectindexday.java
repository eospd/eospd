/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.entity.collect;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 数据采集指标Entity
 * @author denofiend
 * @version 2015-10-29
 */
public class Collectindexday extends DataEntity<Collectindexday> {
	
	private static final long serialVersionUID = 1L;
	private String indexid;		// 自增长ID
	private Date indextime;		// 采集指标时间，年月日有效
	private String deviceid;		// 仪表ID，=0指系统采集指标；&gt;0指某仪表采集指标 meter表的deviceId列
	private String dataeffrate;		// 数据有效率
	private String meteronlinerate;		// 仪表在线率
	private String realcollectrate;		// realcollectrate
	
	public Collectindexday() {
		super();
	}

	public Collectindexday(String id){
		super(id);
	}

	@Length(min=1, max=11, message="自增长ID长度必须介于 1 和 11 之间")
	public String getIndexid() {
		return indexid;
	}

	public void setIndexid(String indexid) {
		this.indexid = indexid;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getIndextime() {
		return indextime;
	}

	public void setIndextime(Date indextime) {
		this.indextime = indextime;
	}
	
	@Length(min=0, max=11, message="仪表ID，=0指系统采集指标；&gt;0指某仪表采集指标 meter表的deviceId列长度必须介于 0 和 11 之间")
	public String getDeviceid() {
		return deviceid;
	}

	public void setDeviceid(String deviceid) {
		this.deviceid = deviceid;
	}
	
	public String getDataeffrate() {
		return dataeffrate;
	}

	public void setDataeffrate(String dataeffrate) {
		this.dataeffrate = dataeffrate;
	}
	
	public String getMeteronlinerate() {
		return meteronlinerate;
	}

	public void setMeteronlinerate(String meteronlinerate) {
		this.meteronlinerate = meteronlinerate;
	}
	
	public String getRealcollectrate() {
		return realcollectrate;
	}

	public void setRealcollectrate(String realcollectrate) {
		this.realcollectrate = realcollectrate;
	}
	
}