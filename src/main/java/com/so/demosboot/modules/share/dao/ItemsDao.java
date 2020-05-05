package com.so.demosboot.modules.share.dao;

import com.so.demosboot.modules.share.entity.UserFav;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.so.demosboot.common.baseData.BaseDao;
import com.so.demosboot.modules.share.entity.Items;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 图书信息DAO接口
 * @author so
 * @version V1.0
 */
@Mapper
public interface ItemsDao extends BaseDao<Items> {

    @Select("select * from user_fav where uid = #{uid} ")
    List<UserFav> userFavlist(UserFav userFav);

    @Select("select * from user_fav where uid = #{uid} and itId = #{itId} ")
    List<UserFav> userFavlistByUidItId(UserFav userFav);

    @Insert("INSERT INTO user_fav (itId, uid) VALUES (#{itId},#{uid})")
    int addUserFav(UserFav userFav);

    @Delete("delete from user_fav where id = #{id}")
    int deleteUserFav(UserFav userFav);
}