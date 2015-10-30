/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.entity.meter;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import javax.validation.constraints.NotNull;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 仪表信息Entity
 * @author denofiend
 * @version 2015-10-30
 */
public class Meter extends DataEntity<Meter> {
	
	private static final long serialVersionUID = 1L;
	private String deviceid;		// 仪表ID
	private String deviceurl;		// deviceurl
	private String datatypeid;		// 仪表类型ID，关联到仪表类型表
	private String devicecommaddr;		// 仪表通讯地址，一般为modbus地址（1-254有效）
	private String location;		// 位置
	private String desc;		// 描述
	private String dcid;		// 数据采集器ID，关联到表 dc
	private String dcchannelsn;		// 数据采集器通道编号，从1开始
	private String autosign;		// 自动添加标志，1-自动添加，0-手工添加
	private Date installtime;		// 安装时间
	private Date inserttime;		// 入库时间
	private Date updatetime;		// updatetime
	
	public Meter() {
		super();
	}

	public Meter(String id){
		super(id);
	}

	@Length(min=1, max=11, message="仪表ID长度必须介于 1 和 11 之间")
	public String getDeviceid() {
		return deviceid;
	}

	public void setDeviceid(String deviceid) {
		this.deviceid = deviceid;
	}
	
	@Length(min=1, max=200, message="deviceurl长度必须介于 1 和 200 之间")
	public String getDeviceurl() {
		return deviceurl;
	}

	public void setDeviceurl(String deviceurl) {
		this.deviceurl = deviceurl;
	}
	
	@Length(min=0, max=11, message="仪表类型ID，关联到仪表类型表长度必须介于 0 和 11 之间")
	public String getDatatypeid() {
		return datatypeid;
	}

	public void setDatatypeid(String datatypeid) {
		this.datatypeid = datatypeid;
	}
	
	@Length(min=0, max=255, message="仪表通讯地址，一般为modbus地址（1-254有效）长度必须介于 0 和 255 之间")
	public String getDevicecommaddr() {
		return devicecommaddr;
	}

	public void setDevicecommaddr(String devicecommaddr) {
		this.devicecommaddr = devicecommaddr;
	}
	
	@Length(min=0, max=200, message="位置长度必须介于 0 和 200 之间")
	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
	
	@Length(min=0, max=200, message="描述长度必须介于 0 和 200 之间")
	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	@Length(min=0, max=11, message="数据采集器ID，关联到表 dc长度必须介于 0 和 11 之间")
	public String getDcid() {
		return dcid;
	}

	public void setDcid(String dcid) {
		this.dcid = dcid;
	}
	
	@Length(min=0, max=11, message="数据采集器通道编号，从1开始长度必须介于 0 和 11 之间")
	public String getDcchannelsn() {
		return dcchannelsn;
	}

	public void setDcchannelsn(String dcchannelsn) {
		this.dcchannelsn = dcchannelsn;
	}
	
	@Length(min=1, max=11, message="自动添加标志，1-自动添加，0-手工添加长度必须介于 1 和 11 之间")
	public String getAutosign() {
		return autosign;
	}

	public void setAutosign(String autosign) {
		this.autosign = autosign;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getInstalltime() {
		return installtime;
	}

	public void setInstalltime(Date installtime) {
		this.installtime = installtime;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="入库时间不能为空")
	public Date getInserttime() {
		return inserttime;
	}

	public void setInserttime(Date inserttime) {
		this.inserttime = inserttime;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="updatetime不能为空")
	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	
}