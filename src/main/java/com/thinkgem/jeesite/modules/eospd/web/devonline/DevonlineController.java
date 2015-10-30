/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.web.devonline;

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
import com.thinkgem.jeesite.modules.eospd.entity.devonline.Devonline;
import com.thinkgem.jeesite.modules.eospd.service.devonline.DevonlineService;

/**
 * 设备在线状态历史Controller
 * @author denofiend
 * @version 2015-10-30
 */
@Controller
@RequestMapping(value = "${adminPath}/eospd/devonline/devonline")
public class DevonlineController extends BaseController {

	@Autowired
	private DevonlineService devonlineService;
	
	@ModelAttribute
	public Devonline get(@RequestParam(required=false) String id) {
		Devonline entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = devonlineService.get(id);
		}
		if (entity == null){
			entity = new Devonline();
		}
		return entity;
	}
	
	@RequiresPermissions("eospd:devonline:devonline:view")
	@RequestMapping(value = {"list", ""})
	public String list(Devonline devonline, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Devonline> page = devonlineService.findPage(new Page<Devonline>(request, response), devonline); 
		model.addAttribute("page", page);
		return "modules/eospd/devonline/devonlineList";
	}

	@RequiresPermissions("eospd:devonline:devonline:view")
	@RequestMapping(value = "form")
	public String form(Devonline devonline, Model model) {
		model.addAttribute("devonline", devonline);
		return "modules/eospd/devonline/devonlineForm";
	}

	@RequiresPermissions("eospd:devonline:devonline:edit")
	@RequestMapping(value = "save")
	public String save(Devonline devonline, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, devonline)){
			return form(devonline, model);
		}
		devonlineService.save(devonline);
		addMessage(redirectAttributes, "保存设备在线状态历史成功");
		return "redirect:"+Global.getAdminPath()+"/eospd/devonline/devonline/?repage";
	}
	
	@RequiresPermissions("eospd:devonline:devonline:edit")
	@RequestMapping(value = "delete")
	public String delete(Devonline devonline, RedirectAttributes redirectAttributes) {
		devonlineService.delete(devonline);
		addMessage(redirectAttributes, "删除设备在线状态历史成功");
		return "redirect:"+Global.getAdminPath()+"/eospd/devonline/devonline/?repage";
	}

}