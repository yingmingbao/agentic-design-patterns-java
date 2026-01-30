USE strategist;

CREATE TABLE IF NOT EXISTS sys_agent_chat_dialog (
    id BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '主键ID',
    tenant_id BIGINT COMMENT '租户ID',
    enterprise_id BIGINT COMMENT '企业ID',
    user_id BIGINT COMMENT '用户ID',
    title VARCHAR(255) COMMENT '对话标题',
    is_deleted TINYINT(1) DEFAULT 0 COMMENT '是否删除 0:否 1:是',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    create_by VARCHAR(64) COMMENT '创建者',
    update_by VARCHAR(64) COMMENT '更新者',
    remark VARCHAR(500) COMMENT '备注'
) COMMENT='智能体对话表';

CREATE TABLE IF NOT EXISTS sys_agent_chat_dialog_detail (
    id BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '主键ID',
    dialog_id BIGINT NOT NULL COMMENT '对话ID',
    role VARCHAR(20) NOT NULL COMMENT '角色(user/assistant)',
    content TEXT COMMENT '内容',
    is_deleted TINYINT(1) DEFAULT 0 COMMENT '是否删除 0:否 1:是',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    create_by VARCHAR(64) COMMENT '创建者',
    update_by VARCHAR(64) COMMENT '更新者',
    remark VARCHAR(500) COMMENT '备注',
    INDEX idx_dialog_id (dialog_id)
) COMMENT='智能体对话详情表';
