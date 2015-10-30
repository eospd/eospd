/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.entity.meter_type;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import javax.validation.constraints.NotNull;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 仪表型号信息Entity
 * @author denofiend
 * @version 2015-10-30
 */
public class Metertype extends DataEntity<Metertype> {
	
	private static final long serialVersionUID = 1L;
	private String datatypeid;		// datatypeid
	private String typeurl;		// 类型Url
	private String typename;		// 类型名称
	private String desc;		// 备注信息
	private String venderid;		// 厂家ID
	private String autosign;		// 自动添加标志，1-自动添加，0-手工添加
	private Date inserttime;		// 入库时间
	private Date updatetime;		// 更新时间
	
	public Metertype() {
		super();
	}

	public Metertype(String id){
		super(id);
	}

	@Length(min=1, max=11, message="datatypeid长度必须介于 1 和 11 之间")
	public String getDatatypeid() {
		return datatypeid;
	}

	public void setDatatypeid(String datatypeid) {
		this.datatypeid = datatypeid;
	}
	
	@Length(min=1, max=200, message="类型Url长度必须介于 1 和 200 之间")
	public String getTypeurl() {
		return typeurl;
	}

	public void setTypeurl(String typeurl) {
		this.typeurl = typeurl;
	}
	
	@Length(min=1, max=50, message="类型名称长度必须介于 1 和 50 之间")
	public String getTypename() {
		return typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}
	
	@Length(min=1, max=400, message="备注信息长度必须介于 1 和 400 之间")
	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	@Length(min=1, max=11, message="厂家ID长度必须介于 1 和 11 之间")
	public String getVenderid() {
		return venderid;
	}

	public void setVenderid(String venderid) {
		this.venderid = venderid;
	}
	
	@Length(min=1, max=11, message="自动添加标志，1-自动添加，0-手工添加长度必须介于 1 和 11 之间")
	public String getAutosign() {
		return autosign;
	}

	public void setAutosign(String autosign) {
		this.autosign = autosign;
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
	@NotNull(message="更新时间不能为空")
	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	
}