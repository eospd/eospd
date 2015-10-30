/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.web.collect;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.eospd.entity.collect.Collectindexday;
import com.thinkgem.jeesite.modules.eospd.service.collect.CollectindexdayService;

/**
 * 数据采集指标Controller
 * @author denofiend
 * @version 2015-10-30
 */
@Controller
@RequestMapping(value = "${adminPath}/eospd/collect/collectindexday")
public class CollectindexdayController extends BaseController {

	@Autowired
	private CollectindexdayService collectindexdayService;
	
	@ModelAttribute
	public Collectindexday get(@RequestParam(required=false) String id) {
		Collectindexday entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = collectindexdayService.get(id);
		}
		if (entity == null){
			entity = new Collectindexday();
		}
		return entity;
	}
	
	@RequiresPermissions("eospd:collect:collectindexday:view")
	@RequestMapping(value = {"list", ""})
	public String list(Collectindexday collectindexday, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Collectindexday> page = collectindexdayService.findPage(new Page<Collectindexday>(request, response), collectindexday); 
		model.addAttribute("page", page);
		return "modules/eospd/collect/collectindexdayList";
	}

	@RequiresPermissions("eospd:collect:collectindexday:view")
	@RequestMapping(value = "form")
	public String form(Collectindexday collectindexday, Model model) {
		model.addAttribute("collectindexday", collectindexday);
		return "modules/eospd/collect/collectindexdayForm";
	}

	@RequiresPermissions("eospd:collect:collectindexday:edit")
	@RequestMapping(value = "save")
	public String save(Collectindexday collectindexday, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, collectindexday)){
			return form(collectindexday, model);
		}
		collectindexdayService.save(collectindexday);
		addMessage(redirectAttributes, "保存数据采集指标成功");
		return "redirect:"+Global.getAdminPath()+"/eospd/collect/collectindexday/?repage";
	}
	
	@RequiresPermissions("eospd:collect:collectindexday:edit")
	@RequestMapping(value = "delete")
	public String delete(Collectindexday collectindexday, RedirectAttributes redirectAttributes) {
		collectindexdayService.delete(collectindexday);
		addMessage(redirectAttributes, "删除数据采集指标成功");
		return "redirect:"+Global.getAdminPath()+"/eospd/collect/collectindexday/?repage";
	}

}