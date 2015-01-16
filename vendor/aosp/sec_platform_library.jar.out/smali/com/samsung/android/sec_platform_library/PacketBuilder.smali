.class public Lcom/samsung/android/sec_platform_library/PacketBuilder;
.super Ljava/lang/Object;
.source "PacketBuilder.java"


# static fields
.field public static final OEM_CFG_EXEC_DEFAULT:B = 0x1t

.field public static final OEM_CFG_SET_DEVICE_MAC_ADDRESS:B = 0x30t

.field public static final OEM_FUNCTION_ID_CONFIGURATION:B = 0xct

.field public static final OEM_FUNCTION_ID_FACTORY:B = 0x12t

.field public static final OEM_FUNCTION_ID_IMEI:B = 0x6t

.field public static final OEM_FUNCTION_ID_SYSDUMP:B = 0x7t

.field public static final OEM_IMEI_EVENT_START_IMEI:B = 0x5t

.field public static final OEM_IMEI_EVENT_VERIFY_COMPARE:B = 0x6t

.field public static final OEM_IMEI_SET_PRECONFIGURAION:B = 0x1t

.field public static final OEM_SECPHONE_START:B = 0xat


# instance fields
.field private m_Command:[B

.field private m_Length:S

.field private m_bos:Ljava/io/ByteArrayOutputStream;

.field private m_dos:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(BB)V
    .locals 3
    .parameter "Main_Command"
    .parameter "Sub_Command"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_bos:Ljava/io/ByteArrayOutputStream;

    .line 34
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_bos:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_dos:Ljava/io/DataOutputStream;

    .line 36
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Command:[B

    .line 37
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Command:[B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 38
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Command:[B

    const/4 v2, 0x1

    aput-byte p2, v1, v2

    .line 40
    const/4 v0, 0x2

    .line 41
    .local v0, sizeofShort:S
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Command:[B

    array-length v1, v1

    add-int/2addr v1, v0

    int-to-short v1, v1

    iput-short v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    .line 42
    return-void
.end method


# virtual methods
.method public addData(B)Lcom/samsung/android/sec_platform_library/PacketBuilder;
    .locals 2
    .parameter "data"

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_dos:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    iget-short v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    .line 53
    return-object p0

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public addData(S)Lcom/samsung/android/sec_platform_library/PacketBuilder;
    .locals 2
    .parameter "data"

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_dos:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    iget-short v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    .line 65
    return-object p0

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public addData([BII)Lcom/samsung/android/sec_platform_library/PacketBuilder;
    .locals 2
    .parameter "data"
    .parameter "iBegin"
    .parameter "NumOfData"

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_dos:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    iget-short v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    add-int/2addr v1, p3

    int-to-short v1, v1

    iput-short v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    .line 77
    return-object p0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getPacket()[B
    .locals 7

    .prologue
    .line 81
    iget-object v4, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 83
    .local v1, data:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 87
    .local v2, dos:Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Command:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Command:[B

    array-length v6, v6

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/DataOutputStream;->write([BII)V

    .line 88
    iget-short v4, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 89
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v2, v1, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V

    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_1
    return-object v4

    .line 96
    :catch_0
    move-exception v3

    .line 97
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 91
    .restart local v3       #e:Ljava/io/IOException;
    const/4 v4, 0x0

    .line 94
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V

    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 96
    :catch_2
    move-exception v3

    .line 97
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 93
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 94
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V

    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 98
    :goto_2
    throw v4

    .line 96
    :catch_3
    move-exception v3

    .line 97
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
