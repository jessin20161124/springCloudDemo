package com.jessin.practice.spring.cloud.provider.sharding;

import lombok.AllArgsConstructor;

import javax.sql.DataSource;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.SQLFeatureNotSupportedException;
import java.sql.Statement;
import java.util.logging.Logger;

@AllArgsConstructor
public class BasicDataSource implements DataSource {
    private String dbName;
    private DataSource instanceDataSource;

    @Override
    public Connection getConnection() throws SQLException {
        Connection connection = instanceDataSource.getConnection();
        useDb(connection);
        return connection;
    }

    private void useDb(Connection connection) throws SQLException {
        Statement statement = connection.createStatement();
        // 那么如果是连接池，复用的话，这里不就有问题么？但是这里是连接池的上层，所以没问题？每次都会重新设置
        statement.execute("use `" + dbName + "`;");
        statement.close();
    }

    @Override
    public Connection getConnection(String username, String password) throws SQLException {
        Connection connection = instanceDataSource.getConnection(username, password);
        useDb(connection);
        return connection;
    }

    @Override
    public <T> T unwrap(Class<T> iface) throws SQLException {
        return null;
    }

    @Override
    public boolean isWrapperFor(Class<?> iface) throws SQLException {
        return false;
    }

    @Override
    public PrintWriter getLogWriter() throws SQLException {
        return null;
    }

    @Override
    public void setLogWriter(PrintWriter out) throws SQLException {

    }

    @Override
    public void setLoginTimeout(int seconds) throws SQLException {

    }

    /**
     * todo 实现
     * @return
     * @throws SQLException
     */
    @Override
    public int getLoginTimeout() throws SQLException {
        return 0;
    }

    @Override
    public Logger getParentLogger() throws SQLFeatureNotSupportedException {
        return null;
    }
}
