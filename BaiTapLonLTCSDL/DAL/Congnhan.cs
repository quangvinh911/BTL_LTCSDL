using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Congnhan
    {
        Provider p;
        public Congnhan()
        {
            p = new Provider();
        }
        public List<int> ViewCongNhan(string sql)
        {
            try
            {
                SqlDataReader dr = p.View(sql);
                while (dr.Read())
                {
                    dr.GetString(0);
                    dr.GetString(1);
                    dr.GetString(2);
                    dr.GetString(3);
                }
            }
            finally
            {

            }
        }
        public List<int> ViewChuVu(string sql)
        {
            try
            {
                SqlDataReader dr = p.View(sql);
                while (dr.Read())
                {
                    dr.GetString(0);
                    dr.GetString(1);
                    dr.GetString(2);
                    dr.GetString(3);
                }
            }
            finally
            {

            }
        }
        public List<int> ViewCaLamViec(string sql)
        {
            try
            {
                SqlDataReader dr = p.View(sql);
                while (dr.Read())
                {
                    dr.GetString(0);
                    dr.GetString(1);
                    dr.GetString(2);
                    dr.GetString(3);
                }
            }
            finally
            {

            }
        }
        public List<int> ViewLich(string sql)
        {
            try
            {
                SqlDataReader dr = p.View(sql);
                while (dr.Read())
                {
                    dr.GetString(0);
                    dr.GetString(1);
                    dr.GetString(2);
                    dr.GetString(3);
                }
            }
            finally
            {

            }
        }
        public List<int> ViewGioLamViec(string sql)
        {
            try
            {
                SqlDataReader dr = p.View(sql);
                while (dr.Read())
                {
                    dr.GetString(0);
                    dr.GetString(1);
                    dr.GetString(2);
                    dr.GetString(3);
                }
            }
            finally
            {

            }
        }
        public List<int> ViewHeSoLuong(string sql)
        {
            try
            {
                SqlDataReader dr = p.View(sql);
                while (dr.Read())
                {
                    dr.GetString(0);
                    dr.GetString(1);
                    dr.GetString(2);
                    dr.GetString(3);
                }
            }
            finally
            {

            }
        }
        public List<int> ViewLoaiCongViec(string sql)
        {
            try
            {
                SqlDataReader dr = p.View(sql);
                while (dr.Read())
                {
                    dr.GetString(0);
                    dr.GetString(1);
                    dr.GetString(2);
                    dr.GetString(3);
                }
            }
            finally
            {

            }
        }
        public List<int> View(string sql)
        {
            try
            {
                SqlDataReader dr = p.View(sql);
                while (dr.Read())
                {
                    dr.GetString(0);
                    dr.GetString(1);
                    dr.GetString(2);
                    dr.GetString(3);
                }
            }
            finally
            {

            }
        }
        public int AddCongNhan(int i)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int AddCongNhan(int i)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int AddCongNhan(int i)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int AddCongNhan(int i)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int AddCongNhan(int i)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int AddCongNhan(int i)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int AddCongNhan(int i)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int AddCongNhan(int i)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int UpdateCongNhan(int i)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int UpdateCongNhan(int i)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int UpdateCongNhan(int i)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int UpdateCongNhan(int i)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int UpdateCongNhan(int i)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int UpdateCongNhan(int i)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int UpdateCongNhan(int i)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int UpdateCongNhan(int i)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int DeleteCongNhan(int i)
        {
            ist<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int DeleteCongNhan(int i)
        {
            ist<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int DeleteCongNhan(int i)
        {
            ist<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);

        }
        public int DeleteCongNhan(int i)
        {
            ist<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int DeleteCongNhan(int i)
        {
            ist<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int DeleteCongNhan(int i)
        {
            ist<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int DeleteCongNhan(int i)
        {
            ist<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
        public int DeleteCongNhan(int i)
        {
            ist<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter());
            p.Add(string sql, CommandType.StoredProcedure, paras);
        }
    }
}
