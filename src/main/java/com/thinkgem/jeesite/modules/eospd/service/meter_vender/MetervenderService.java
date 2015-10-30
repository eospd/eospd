/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.service.meter_vender;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.eospd.entity.meter_vender.Metervender;
import com.thinkgem.jeesite.modules.eospd.dao.meter_vender.MetervenderDao;

/**
 * 仪表厂家信息Service
 * @author denofiend
 * @version 2015-10-30
 */
@Service
@Transactional(readOnly = true)
public class MetervenderService extends CrudService<MetervenderDao, Metervender> {

	public Metervender get(String id) {
		return super.get(id);
	}
	
	public List<Metervender> findList(Metervender metervender) {
		return super.findList(metervender);
	}
	
	public Page<Metervender> findPage(Page<Metervender> page, Metervender metervender) {
		return super.findPage(page, metervender);
	}
	
	@Transactional(readOnly = false)
	public void save(Metervender metervender) {
		super.save(metervender);
	}
	
	@Transactional(readOnly = false)
	public void delete(Metervender metervender) {
		super.delete(metervender);
	}
	
}