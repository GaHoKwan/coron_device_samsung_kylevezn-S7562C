.class public abstract Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;
.super Landroid/os/Binder;
.source "IAuditLog.java"

# interfaces
.implements Lcom/sec/enterprise/knox/auditlog/IAuditLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/auditlog/IAuditLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.enterprise.knox.auditlog.IAuditLog"

.field static final TRANSACTION_AuditLogger:I = 0x9

.field static final TRANSACTION_disableAuditLog:I = 0x2

.field static final TRANSACTION_disableIPTablesLogging:I = 0xc

.field static final TRANSACTION_dumpLogFile:I = 0xa

.field static final TRANSACTION_enableAuditLog:I = 0x1

.field static final TRANSACTION_enableIPTablesLogging:I = 0xb

.field static final TRANSACTION_getCriticalLogSize:I = 0x6

.field static final TRANSACTION_getCurrentLogFileSize:I = 0x4

.field static final TRANSACTION_getMaximumLogSize:I = 0x8

.field static final TRANSACTION_isAuditLogEnabled:I = 0x3

.field static final TRANSACTION_isIPTablesLoggingEnabled:I = 0xd

.field static final TRANSACTION_setCriticalLogSize:I = 0x5

.field static final TRANSACTION_setMaximumLogSize:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.sec.enterprise.knox.auditlog.IAuditLog"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/auditlog/IAuditLog;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.sec.enterprise.knox.auditlog.IAuditLog"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 182
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 46
    :sswitch_0
    const-string v1, "com.sec.enterprise.knox.auditlog.IAuditLog"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v1, "com.sec.enterprise.knox.auditlog.IAuditLog"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->enableAuditLog()Z

    move-result v15

    .line 53
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v15, :cond_0

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/4 v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 59
    .end local v15           #_result:Z
    :sswitch_2
    const-string v1, "com.sec.enterprise.knox.auditlog.IAuditLog"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->disableAuditLog()Z

    move-result v15

    .line 61
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v15, :cond_1

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    const/4 v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 67
    .end local v15           #_result:Z
    :sswitch_3
    const-string v1, "com.sec.enterprise.knox.auditlog.IAuditLog"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->isAuditLogEnabled()Z

    move-result v15

    .line 69
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v15, :cond_2

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    const/4 v1, 0x1

    goto :goto_0

    .line 70
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 75
    .end local v15           #_result:Z
    :sswitch_4
    const-string v1, "com.sec.enterprise.knox.auditlog.IAuditLog"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->getCurrentLogFileSize()I

    move-result v15

    .line 77
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    const/4 v1, 0x1

    goto :goto_0

    .line 83
    .end local v15           #_result:I
    :sswitch_5
    const-string v1, "com.sec.enterprise.knox.auditlog.IAuditLog"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    .local v2, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->setCriticalLogSize(I)Z

    move-result v15

    .line 87
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v15, :cond_3

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 88
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 93
    .end local v2           #_arg0:I
    .end local v15           #_result:Z
    :sswitch_6
    const-string v1, "com.sec.enterprise.knox.auditlog.IAuditLog"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->getCriticalLogSize()I

    move-result v15

    .line 95
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 101
    .end local v15           #_result:I
    :sswitch_7
    const-string v1, "com.sec.enterprise.knox.auditlog.IAuditLog"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .restart local v2       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->setMaximumLogSize(I)Z

    move-result v15

    .line 105
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v15, :cond_4

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 106
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 111
    .end local v2           #_arg0:I
    .end local v15           #_result:Z
    :sswitch_8
    const-string v1, "com.sec.enterprise.knox.auditlog.IAuditLog"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->getMaximumLogSize()I

    move-result v15

    .line 113
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 119
    .end local v15           #_result:I
    :sswitch_9
    const-string v1, "com.sec.enterprise.knox.auditlog.IAuditLog"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    .line 127
    .local v4, _arg2:Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 129
    .local v5, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg5:Ljava/lang/String;
    move-object/from16 v1, p0

    .line 132
    invoke-virtual/range {v1 .. v7}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 125
    .end local v4           #_arg2:Z
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_6

    .line 138
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    :sswitch_a
    const-string v1, "com.sec.enterprise.knox.auditlog.IAuditLog"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 142
    .local v9, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 144
    .local v11, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 147
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .local v5, _arg3:Landroid/os/ParcelFileDescriptor;
    :goto_7
    move-object/from16 v8, p0

    move-object v13, v4

    move-object v14, v5

    .line 152
    invoke-virtual/range {v8 .. v14}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->dumpLogFile(JJLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v15

    .line 153
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v15, :cond_7

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 150
    .end local v5           #_arg3:Landroid/os/ParcelFileDescriptor;
    .end local v15           #_result:Z
    :cond_6
    const/4 v5, 0x0

    .restart local v5       #_arg3:Landroid/os/ParcelFileDescriptor;
    goto :goto_7

    .line 154
    .restart local v15       #_result:Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 159
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Landroid/os/ParcelFileDescriptor;
    .end local v9           #_arg0:J
    .end local v11           #_arg1:J
    .end local v15           #_result:Z
    :sswitch_b
    const-string v1, "com.sec.enterprise.knox.auditlog.IAuditLog"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->enableIPTablesLogging()Z

    move-result v15

    .line 161
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v15, :cond_8

    const/4 v1, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 162
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    .line 167
    .end local v15           #_result:Z
    :sswitch_c
    const-string v1, "com.sec.enterprise.knox.auditlog.IAuditLog"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->disableIPTablesLogging()Z

    move-result v15

    .line 169
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v15, :cond_9

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 170
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 175
    .end local v15           #_result:Z
    :sswitch_d
    const-string v1, "com.sec.enterprise.knox.auditlog.IAuditLog"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->isIPTablesLoggingEnabled()Z

    move-result v15

    .line 177
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v15, :cond_a

    const/4 v1, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 178
    :cond_a
    const/4 v1, 0x0

    goto :goto_b

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
