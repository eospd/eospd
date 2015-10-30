/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.entity.dataontime;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import javax.validation.constraints.NotNull;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 数据历史记录Entity
 * @author denofiend
 * @version 2015-10-30
 */
public class Dataontime extends DataEntity<Dataontime> {
	
	private static final long serialVersionUID = 1L;
	private String doid;		// 自增编号
	private String datalayer;		// 数据层级，1-仪表，2-能源
	private String dcid;		// 数据采集器ID，关联数据采集器表
	private Date currenttime;		// 帧当前时间
	private Date recetime;		// 系统接收时间
	private String timeinterval;		// 帧时间间隔，单位：秒
	private String bpsign;		// 断点标识，0-正常，1-重传
	private String dataid;		// 能源ID或仪表ID，原始信息
	private String datatypeid;		// 能源或仪表类型ID，关联能源类型表或仪表类型表
	private String ivsign;		// 插值标志，0-正常；1-插值
	private String p1pv;		// 属性1当前值
	private String p1err;		// 属性1错误标志，0-正常
	private String p1dv;		// 属性1插值
	private String p1rsz;		// 属性1数据满刻度归0标志
	private Date inserttime;		// 入库时间
	private Date updatetime;		// 修改时间
	private String p2pv;		// p2pv
	private String p2err;		// p2err
	private String p2dv;		// p2dv
	private String p2rsz;		// p2rsz
	
	public Dataontime() {
		super();
	}

	public Dataontime(String id){
		super(id);
	}

	@Length(min=1, max=11, message="自增编号长度必须介于 1 和 11 之间")
	public String getDoid() {
		return doid;
	}

	public void setDoid(String doid) {
		this.doid = doid;
	}
	
	@Length(min=1, max=11, message="数据层级，1-仪表，2-能源长度必须介于 1 和 11 之间")
	public String getDatalayer() {
		return datalayer;
	}

	public void setDatalayer(String datalayer) {
		this.datalayer = datalayer;
	}
	
	@Length(min=1, max=11, message="数据采集器ID，关联数据采集器表长度必须介于 1 和 11 之间")
	public String getDcid() {
		return dcid;
	}

	public void setDcid(String dcid) {
		this.dcid = dcid;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="帧当前时间不能为空")
	public Date getCurrenttime() {
		return currenttime;
	}

	public void setCurrenttime(Date currenttime) {
		this.currenttime = currenttime;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="系统接收时间不能为空")
	public Date getRecetime() {
		return recetime;
	}

	public void setRecetime(Date recetime) {
		this.recetime = recetime;
	}
	
	@Length(min=0, max=11, message="帧时间间隔，单位：秒长度必须介于 0 和 11 之间")
	public String getTimeinterval() {
		return timeinterval;
	}

	public void setTimeinterval(String timeinterval) {
		this.timeinterval = timeinterval;
	}
	
	@Length(min=0, max=11, message="断点标识，0-正常，1-重传长度必须介于 0 和 11 之间")
	public String getBpsign() {
		return bpsign;
	}

	public void setBpsign(String bpsign) {
		this.bpsign = bpsign;
	}
	
	@Length(min=0, max=11, message="能源ID或仪表ID，原始信息长度必须介于 0 和 11 之间")
	public String getDataid() {
		return dataid;
	}

	public void setDataid(String dataid) {
		this.dataid = dataid;
	}
	
	@Length(min=1, max=11, message="能源或仪表类型ID，关联能源类型表或仪表类型表长度必须介于 1 和 11 之间")
	public String getDatatypeid() {
		return datatypeid;
	}

	public void setDatatypeid(String datatypeid) {
		this.datatypeid = datatypeid;
	}
	
	@Length(min=0, max=11, message="插值标志，0-正常；1-插值长度必须介于 0 和 11 之间")
	public String getIvsign() {
		return ivsign;
	}

	public void setIvsign(String ivsign) {
		this.ivsign = ivsign;
	}
	
	public String getP1pv() {
		return p1pv;
	}

	public void setP1pv(String p1pv) {
		this.p1pv = p1pv;
	}
	
	@Length(min=0, max=11, message="属性1错误标志，0-正常长度必须介于 0 和 11 之间")
	public String getP1err() {
		return p1err;
	}

	public void setP1err(String p1err) {
		this.p1err = p1err;
	}
	
	public String getP1dv() {
		return p1dv;
	}

	public void setP1dv(String p1dv) {
		this.p1dv = p1dv;
	}
	
	@Length(min=0, max=11, message="属性1数据满刻度归0标志长度必须介于 0 和 11 之间")
	public String getP1rsz() {
		return p1rsz;
	}

	public void setP1rsz(String p1rsz) {
		this.p1rsz = p1rsz;
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
	@NotNull(message="修改时间不能为空")
	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	
	public String getP2pv() {
		return p2pv;
	}

	public void setP2pv(String p2pv) {
		this.p2pv = p2pv;
	}
	
	@Length(min=0, max=11, message="p2err长度必须介于 0 和 11 之间")
	public String getP2err() {
		return p2err;
	}

	public void setP2err(String p2err) {
		this.p2err = p2err;
	}
	
	public String getP2dv() {
		return p2dv;
	}

	public void setP2dv(String p2dv) {
		this.p2dv = p2dv;
	}
	
	@Length(min=0, max=11, message="p2rsz长度必须介于 0 和 11 之间")
	public String getP2rsz() {
		return p2rsz;
	}

	public void setP2rsz(String p2rsz) {
		this.p2rsz = p2rsz;
	}
	
}