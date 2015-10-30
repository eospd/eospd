/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.service.dc;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.eospd.entity.dc.Dc;
import com.thinkgem.jeesite.modules.eospd.dao.dc.DcDao;

/**
 * 数据采集器信息Service
 * @author denofiend
 * @version 2015-10-30
 */
@Service
@Transactional(readOnly = true)
public class DcService extends CrudService<DcDao, Dc> {

	public Dc get(String id) {
		return super.get(id);
	}
	
	public List<Dc> findList(Dc dc) {
		return super.findList(dc);
	}
	
	public Page<Dc> findPage(Page<Dc> page, Dc dc) {
		return super.findPage(page, dc);
	}
	
	@Transactional(readOnly = false)
	public void save(Dc dc) {
		super.save(dc);
	}
	
	@Transactional(readOnly = false)
	public void delete(Dc dc) {
		super.delete(dc);
	}
	
}