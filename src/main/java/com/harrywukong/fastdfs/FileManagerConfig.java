package com.harrywukong.fastdfs;

import java.io.Serializable;

/**
 * Created by Think on 2018/8/25.
 */
public interface FileManagerConfig extends Serializable {

    public static final String FILE_DEFAULT_AUTHOR = "WangLiang";

    public static final String PROTOCOL = "http://";

    public static final String SEPARATOR = "/";

    public static final String TRACKER_NGNIX_ADDR = "192.168.216.130";

    public static final String TRACKER_NGNIX_PORT = "";

    public static final String CLIENT_CONFIG_FILE = "fdfs_client.conf";
}