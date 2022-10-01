#coding:utf-8
__author__ = "ila"
from django.db import models

from .model import BaseModel

from datetime import datetime



class huiyuan(BaseModel):
    __doc__ = u'''huiyuan'''
    __tablename__ = 'huiyuan'

    __loginUser__='yonghuming'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='yonghuming'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    yonghuming=models.CharField ( max_length=255,null=False,unique=True, verbose_name='用户名' )
    mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
    xingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='姓名' )
    touxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='头像' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    chepai=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车牌' )
    '''
    yonghuming=VARCHAR
    mima=VARCHAR
    xingming=VARCHAR
    touxiang=VARCHAR
    xingbie=VARCHAR
    shouji=VARCHAR
    chepai=VARCHAR
    '''
    class Meta:
        db_table = 'huiyuan'
        verbose_name = verbose_name_plural = '会员'
class cheweileixing(BaseModel):
    __doc__ = u'''cheweileixing'''
    __tablename__ = 'cheweileixing'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    cheweileixing=models.CharField ( max_length=255,null=False,unique=True, verbose_name='车位类型' )
    '''
    cheweileixing=VARCHAR
    '''
    class Meta:
        db_table = 'cheweileixing'
        verbose_name = verbose_name_plural = '车位类型'
class cheweixinxi(BaseModel):
    __doc__ = u'''cheweixinxi'''
    __tablename__ = 'cheweixinxi'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    cheweibianhao=models.CharField ( max_length=255,null=False,unique=True, verbose_name='车位编号' )
    cheweimingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车位名称' )
    cheweileixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车位类型' )
    cheweitupian=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车位图片' )
    cheweiweizhi=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车位位置' )
    cheweizhuangtai=models.CharField ( max_length=255,null=False, unique=False, verbose_name='车位状态' )
    tingchejiage=models.IntegerField  ( null=False, unique=False, verbose_name='停车价格' )
    shoufeibiaozhun=models.CharField ( max_length=255, null=True, unique=False, verbose_name='收费标准' )
    cheweixiangqing=models.TextField   (  null=True, unique=False, verbose_name='车位详情' )
    '''
    cheweibianhao=VARCHAR
    cheweimingcheng=VARCHAR
    cheweileixing=VARCHAR
    cheweitupian=VARCHAR
    cheweiweizhi=VARCHAR
    cheweizhuangtai=VARCHAR
    tingchejiage=Integer
    shoufeibiaozhun=VARCHAR
    cheweixiangqing=Text
    '''
    class Meta:
        db_table = 'cheweixinxi'
        verbose_name = verbose_name_plural = '车位信息'
class cheweiweihu(BaseModel):
    __doc__ = u'''cheweiweihu'''
    __tablename__ = 'cheweiweihu'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    cheweibianhao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='车位编号' )
    cheweimingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车位名称' )
    cheweileixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车位类型' )
    cheweiweizhi=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车位位置' )
    weihuleixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='维护类型' )
    weihuxiangmu=models.CharField ( max_length=255, null=True, unique=False, verbose_name='维护项目' )
    weihushijian=models.DateTimeField  ( null=False, unique=False, verbose_name='维护时间' )
    weihuxiangqing=models.TextField   (  null=True, unique=False, verbose_name='维护详情' )
    '''
    cheweibianhao=VARCHAR
    cheweimingcheng=VARCHAR
    cheweileixing=VARCHAR
    cheweiweizhi=VARCHAR
    weihuleixing=VARCHAR
    weihuxiangmu=VARCHAR
    weihushijian=DateTime
    weihuxiangqing=Text
    '''
    class Meta:
        db_table = 'cheweiweihu'
        verbose_name = verbose_name_plural = '车位维护'
class ruchangtingche(BaseModel):
    __doc__ = u'''ruchangtingche'''
    __tablename__ = 'ruchangtingche'



    __authTables__={'yonghuming':'huiyuan',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    cheweibianhao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='车位编号' )
    cheweimingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车位名称' )
    cheweileixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车位类型' )
    cheweitupian=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车位图片' )
    cheweiweizhi=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车位位置' )
    cheweizhuangtai=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车位状态' )
    shoufeibiaozhun=models.CharField ( max_length=255, null=True, unique=False, verbose_name='收费标准' )
    tingchejiage=models.IntegerField  (  null=True, unique=False, verbose_name='停车价格' )
    ruchangshijian=models.DateTimeField  ( null=False, unique=False, verbose_name='入场时间' )
    ruchangbeizhu=models.CharField ( max_length=255, null=True, unique=False, verbose_name='入场备注' )
    yonghuming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户名' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    chepai=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车牌' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,default='否', verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False, verbose_name='审核回复' )
    '''
    cheweibianhao=VARCHAR
    cheweimingcheng=VARCHAR
    cheweileixing=VARCHAR
    cheweitupian=VARCHAR
    cheweiweizhi=VARCHAR
    cheweizhuangtai=VARCHAR
    shoufeibiaozhun=VARCHAR
    tingchejiage=Integer
    ruchangshijian=DateTime
    ruchangbeizhu=VARCHAR
    yonghuming=VARCHAR
    shouji=VARCHAR
    chepai=VARCHAR
    sfsh=VARCHAR
    shhf=Text
    '''
    class Meta:
        db_table = 'ruchangtingche'
        verbose_name = verbose_name_plural = '入场停车'
class chuchangjiaofei(BaseModel):
    __doc__ = u'''chuchangjiaofei'''
    __tablename__ = 'chuchangjiaofei'



    __authTables__={'yonghuming':'huiyuan',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    cheweibianhao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='车位编号' )
    cheweimingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车位名称' )
    cheweileixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车位类型' )
    cheweitupian=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车位图片' )
    tingchejiage=models.IntegerField  (  null=True, unique=False, verbose_name='停车价格' )
    ruchangshijian=models.CharField ( max_length=255, null=True, unique=False, verbose_name='入场时间' )
    chuchangshijian=models.DateTimeField  ( null=False, unique=False, verbose_name='出场时间' )
    tingcheshizhang=models.IntegerField  ( null=False, unique=False, verbose_name='停车时长' )
    tingchefeiyong=models.IntegerField  (  null=True, unique=False, verbose_name='停车费用' )
    xinxibeizhu=models.CharField ( max_length=255, null=True, unique=False, verbose_name='信息备注' )
    yonghuming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户名' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    chepai=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车牌' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,default='否', verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False, verbose_name='审核回复' )
    ispay=models.CharField ( max_length=255, null=True, unique=False,default='未支付', verbose_name='是否支付' )
    '''
    cheweibianhao=VARCHAR
    cheweimingcheng=VARCHAR
    cheweileixing=VARCHAR
    cheweitupian=VARCHAR
    tingchejiage=Integer
    ruchangshijian=VARCHAR
    chuchangshijian=DateTime
    tingcheshizhang=Integer
    tingchefeiyong=Integer
    xinxibeizhu=VARCHAR
    yonghuming=VARCHAR
    shouji=VARCHAR
    chepai=VARCHAR
    sfsh=VARCHAR
    shhf=Text
    ispay=VARCHAR
    '''
    class Meta:
        db_table = 'chuchangjiaofei'
        verbose_name = verbose_name_plural = '出场缴费'
class storeup(BaseModel):
    __doc__ = u'''storeup'''
    __tablename__ = 'storeup'



    __authTables__={}
    __authSeparate__='是'#后台列表权限
    __foreEndListAuth__='是'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    userid=models.BigIntegerField  ( null=False, unique=False, verbose_name='用户id' )
    refid=models.BigIntegerField  (  null=True, unique=False, verbose_name='收藏id' )
    tablename=models.CharField ( max_length=255, null=True, unique=False, verbose_name='表名' )
    name=models.CharField ( max_length=255,null=False, unique=False, verbose_name='收藏名称' )
    picture=models.CharField ( max_length=255,null=False, unique=False, verbose_name='收藏图片' )
    '''
    userid=BigInteger
    refid=BigInteger
    tablename=VARCHAR
    name=VARCHAR
    picture=VARCHAR
    '''
    class Meta:
        db_table = 'storeup'
        verbose_name = verbose_name_plural = '收藏表'
class news(BaseModel):
    __doc__ = u'''news'''
    __tablename__ = 'news'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    title=models.CharField ( max_length=255,null=False, unique=False, verbose_name='标题' )
    introduction=models.TextField   (  null=True, unique=False, verbose_name='简介' )
    picture=models.CharField ( max_length=255,null=False, unique=False, verbose_name='图片' )
    content=models.TextField   ( null=False, unique=False, verbose_name='内容' )
    '''
    title=VARCHAR
    introduction=Text
    picture=VARCHAR
    content=Text
    '''
    class Meta:
        db_table = 'news'
        verbose_name = verbose_name_plural = '公告信息'
class messages(BaseModel):
    __doc__ = u'''messages'''
    __tablename__ = 'messages'



    __authTables__={}
    __hasMessage__='是'#表属性hasMessage为是，新增留言板表messages,字段content（内容），userid（用户id）
    __foreEndListAuth__='是'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    userid=models.BigIntegerField  ( null=False, unique=False, verbose_name='留言人id' )
    username=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户名' )
    content=models.TextField   ( null=False, unique=False, verbose_name='留言内容' )
    reply=models.TextField   (  null=True, unique=False, verbose_name='回复内容' )
    '''
    userid=BigInteger
    username=VARCHAR
    content=Text
    reply=Text
    '''
    class Meta:
        db_table = 'messages'
        verbose_name = verbose_name_plural = '留言板'
