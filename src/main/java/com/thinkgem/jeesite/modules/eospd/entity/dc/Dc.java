/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.entity.dc;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import javax.validation.constraints.NotNull;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 数据采集器信息Entity
 * @author denofiend
 * @version 2015-10-30
 */
public class Dc extends DataEntity<Dc> {
	
	private static final long serialVersionUID = 1L;
	private String dcid;		// 自动增长
	private String dcurl;		// 数据采集器Url
	private String location;		// 位置
	private String desc;		// 描述
	private String channelcount;		// 通道数量
	private String dcip;		// 数据采集器IP地址
	private String autosign;		// 自动添加标志，1-自动添加，0-手工添加
	private Date installtime;		// 安装时间
	private Date inserttime;		// 入库时间
	
	public Dc() {
		super();
	}

	public Dc(String id){
		super(id);
	}

	@Length(min=1, max=11, message="自动增长长度必须介于 1 和 11 之间")
	public String getDcid() {
		return dcid;
	}

	public void setDcid(String dcid) {
		this.dcid = dcid;
	}
	
	@Length(min=1, max=200, message="数据采集器Url长度必须介于 1 和 200 之间")
	public String getDcurl() {
		return dcurl;
	}

	public void setDcurl(String dcurl) {
		this.dcurl = dcurl;
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
	
	@Length(min=0, max=11, message="通道数量长度必须介于 0 和 11 之间")
	public String getChannelcount() {
		return channelcount;
	}

	public void setChannelcount(String channelcount) {
		this.channelcount = channelcount;
	}
	
	@Length(min=0, max=20, message="数据采集器IP地址长度必须介于 0 和 20 之间")
	public String getDcip() {
		return dcip;
	}

	public void setDcip(String dcip) {
		this.dcip = dcip;
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
	
}