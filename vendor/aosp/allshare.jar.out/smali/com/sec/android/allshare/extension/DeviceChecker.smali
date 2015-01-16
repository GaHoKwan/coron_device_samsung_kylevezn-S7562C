.class public Lcom/sec/android/allshare/extension/DeviceChecker;
.super Ljava/lang/Object;
.source "DeviceChecker.java"


# static fields
.field private static final KEY_UDN:Ljava/lang/String; = "udn"

.field private static final NIC_P2P:Ljava/lang/String; = "p2p-wlan0-0"

.field private static final NIC_WLAN:Ljava/lang/String; = "wlan0"

.field private static final PREFERENCE:Ljava/lang/String; = "AllShareMediaServer"

.field private static final TAG_CLASS:Ljava/lang/String; = "DeviceChecker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceCheckedList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Device;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, deviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Device;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceCheckedList(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Device;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, deviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Device;>;"
    const/4 v9, 0x0

    .line 74
    const-string v7, "DeviceChecker"

    const-string v8, "getDeviceCheckedList() with CONCURRENT_MODE = true"

    invoke-static {v7, v8}, Lcom/sec/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, adaptiveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Device;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v6, wlanDeviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Device;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 81
    .local v2, deviceUDN:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 126
    .end local v0           #adaptiveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Device;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 93
    .restart local v0       #adaptiveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Device;>;"
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/allshare/Device;

    .line 94
    .local v1, device:Lcom/sec/android/allshare/Device;
    invoke-virtual {v1}, Lcom/sec/android/allshare/Device;->getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;

    move-result-object v7

    sget-object v8, Lcom/sec/android/allshare/Device$DeviceDomain;->MY_DEVICE:Lcom/sec/android/allshare/Device$DeviceDomain;

    if-eq v7, v8, :cond_2

    .line 95
    const-string v7, "p2p-wlan0-0"

    invoke-virtual {v1}, Lcom/sec/android/allshare/Device;->getNIC()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 96
    invoke-virtual {v1}, Lcom/sec/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, id:Ljava/lang/String;
    const-string v7, "+"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 98
    .local v5, point:I
    if-lez v5, :cond_3

    .line 99
    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 101
    :cond_3
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #point:I
    :cond_4
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    .end local v1           #device:Lcom/sec/android/allshare/Device;
    :cond_5
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 113
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    move-object v0, v6

    .line 114
    goto :goto_0

    .line 117
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/allshare/Device;

    .line 118
    .restart local v1       #device:Lcom/sec/android/allshare/Device;
    invoke-virtual {v1}, Lcom/sec/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v4

    .line 119
    .restart local v4       #id:Ljava/lang/String;
    const-string v7, "+"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 120
    .restart local v5       #point:I
    if-lez v5, :cond_9

    .line 121
    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 122
    :cond_9
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static getMacAddrFromArpTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ipAddr"

    .prologue
    const/4 v6, 0x0

    .line 130
    if-nez p0, :cond_0

    move-object v4, v6

    .line 165
    :goto_0
    return-object v4

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 134
    .local v0, br:Ljava/io/BufferedReader;
    const-string v7, "/"

    const-string v8, ""

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 137
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/proc/net/arp"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 138
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 141
    .local v3, line:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v3

    .line 142
    if-nez v3, :cond_2

    .line 160
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_1
    move-object v4, v6

    .line 165
    goto :goto_0

    .line 145
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v7, " +"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, splitted:[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v7, v5

    const/4 v8, 0x4

    if-lt v7, v8, :cond_1

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 147
    const/4 v7, 0x3

    aget-object v4, v5, v7

    .line 148
    .local v4, mac:Ljava/lang/String;
    const-string v7, "..:..:..:..:..:.."

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 149
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v4

    .line 160
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v2

    .line 162
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 160
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    move-object v4, v6

    .line 163
    goto :goto_0

    .line 161
    :catch_1
    move-exception v2

    .line 162
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 161
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #mac:Ljava/lang/String;
    .end local v5           #splitted:[Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 162
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 164
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1

    .line 156
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #line:Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 157
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 160
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 161
    :catch_4
    move-exception v2

    .line 162
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 159
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 160
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 163
    :goto_5
    throw v6

    .line 161
    :catch_5
    move-exception v2

    .line 162
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 159
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 156
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static isMyLocalProvider(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "deviceId"

    .prologue
    const/4 v4, 0x0

    .line 44
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v4

    .line 47
    :cond_1
    :try_start_0
    const-string v5, "com.sec.android.nearby.mediaserver"

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 53
    .local v2, server:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 54
    const-string v5, "AllShareMediaServer"

    const/4 v6, 0x5

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 56
    .local v1, preference:Landroid/content/SharedPreferences;
    const-string v5, "udn"

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, udn:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 60
    const-string v5, "uuid:"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    const/4 v4, 0x1

    goto :goto_0

    .line 49
    .end local v1           #preference:Landroid/content/SharedPreferences;
    .end local v2           #server:Landroid/content/Context;
    .end local v3           #udn:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
