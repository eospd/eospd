/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.entity.devonline;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import javax.validation.constraints.NotNull;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 设备在线状态历史Entity
 * @author denofiend
 * @version 2015-10-30
 */
public class Devonline extends DataEntity<Devonline> {
	
	private static final long serialVersionUID = 1L;
	private String devolid;		// devolid
	private String dcid;		// 数据采集器ID，关联数据采集器表
	private String devicetype;		// 设备类型。1：数据采集器；2-仪表；
	private String deviceid;		// 设备标识，关联数据采集器表或仪表表
	private Date currenttime;		// 帧当前时间
	private String devicestatus;		// 设备状态，0：离线；1：在线；2：重启
	private String bpsign;		// 断点标识，0-正常，1-重传
	private Date inserttime;		// 入库时间
	
	public Devonline() {
		super();
	}

	public Devonline(String id){
		super(id);
	}

	@Length(min=1, max=11, message="devolid长度必须介于 1 和 11 之间")
	public String getDevolid() {
		return devolid;
	}

	public void setDevolid(String devolid) {
		this.devolid = devolid;
	}
	
	@Length(min=1, max=11, message="数据采集器ID，关联数据采集器表长度必须介于 1 和 11 之间")
	public String getDcid() {
		return dcid;
	}

	public void setDcid(String dcid) {
		this.dcid = dcid;
	}
	
	@Length(min=1, max=11, message="设备类型。1：数据采集器；2-仪表；长度必须介于 1 和 11 之间")
	public String getDevicetype() {
		return devicetype;
	}

	public void setDevicetype(String devicetype) {
		this.devicetype = devicetype;
	}
	
	@Length(min=1, max=11, message="设备标识，关联数据采集器表或仪表表长度必须介于 1 和 11 之间")
	public String getDeviceid() {
		return deviceid;
	}

	public void setDeviceid(String deviceid) {
		this.deviceid = deviceid;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="帧当前时间不能为空")
	public Date getCurrenttime() {
		return currenttime;
	}

	public void setCurrenttime(Date currenttime) {
		this.currenttime = currenttime;
	}
	
	@Length(min=1, max=11, message="设备状态，0：离线；1：在线；2：重启长度必须介于 1 和 11 之间")
	public String getDevicestatus() {
		return devicestatus;
	}

	public void setDevicestatus(String devicestatus) {
		this.devicestatus = devicestatus;
	}
	
	@Length(min=0, max=11, message="断点标识，0-正常，1-重传长度必须介于 0 和 11 之间")
	public String getBpsign() {
		return bpsign;
	}

	public void setBpsign(String bpsign) {
		this.bpsign = bpsign;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="入库时间不能为空")
	public Date getInserttime() {
		return inserttime;
	}

	public void setInserttime(Date inserttime) {
		this.inserttime = inserttime;
	}
	
}