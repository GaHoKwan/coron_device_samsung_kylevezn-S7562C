.class public abstract Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;
.super Landroid/os/Binder;
.source "IMiniModeAppManager.java"

# interfaces
.implements Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.app.minimode.manager.IMiniModeAppManager"

.field static final TRANSACTION_closeAll:I = 0x6

.field static final TRANSACTION_closeOthers:I = 0x7

.field static final TRANSACTION_getAllRunningMiniApps:I = 0x15

.field static final TRANSACTION_getInstanceState:I = 0x14

.field static final TRANSACTION_getLastPosition:I = 0xb

.field static final TRANSACTION_getMiniModeAppCallback:I = 0x16

.field static final TRANSACTION_getPosition:I = 0xc

.field static final TRANSACTION_hideAll:I = 0x9

.field static final TRANSACTION_isOccupiedPosition:I = 0x10

.field static final TRANSACTION_move:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0x11

.field static final TRANSACTION_removePosition:I = 0xe

.field static final TRANSACTION_requestFocus:I = 0x5

.field static final TRANSACTION_setInstanceState:I = 0x13

.field static final TRANSACTION_setLastSize:I = 0xf

.field static final TRANSACTION_setPosition:I = 0xa

.field static final TRANSACTION_showAll:I = 0x8

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_startWithPosition:I = 0x2

.field static final TRANSACTION_stop:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x12

.field static final TRANSACTION_updatePosition:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 389
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 50
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 55
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->start(Landroid/content/ComponentName;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 53
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1

    .line 61
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_2
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    .line 64
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 70
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 72
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 73
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->startWithPosition(Landroid/content/ComponentName;II)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2

    .line 79
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 82
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 87
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->stop(Landroid/content/ComponentName;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3

    .line 93
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_4
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 96
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 102
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->move(Landroid/content/ComponentName;II)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 99
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_4

    .line 111
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_5
    const-string v8, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    .line 114
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 120
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v1, v6

    .line 121
    .local v1, _arg1:Z
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->requestFocus(Landroid/content/ComponentName;Z)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_5

    :cond_5
    move v1, v7

    .line 120
    goto :goto_6

    .line 127
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_6
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->closeAll()V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 134
    :sswitch_7
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    .line 137
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 142
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->closeOthers(Landroid/content/ComponentName;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_7

    .line 148
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_8
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->showAll()V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 155
    :sswitch_9
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->hideAll()V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 162
    :sswitch_a
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    .line 167
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 173
    .local v1, _arg1:Landroid/content/ComponentName;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    .restart local v2       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 176
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->setPosition(ILandroid/content/ComponentName;II)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 170
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_8

    .line 182
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :sswitch_b
    const-string v8, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_8

    .line 187
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 192
    .restart local v1       #_arg1:Landroid/content/ComponentName;
    :goto_9
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->getLastPosition(ILandroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v4

    .line 193
    .local v4, _result:Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v4, :cond_9

    .line 195
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    invoke-virtual {v4, p3, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 190
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_result:Landroid/graphics/Rect;
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_9

    .line 199
    .restart local v4       #_result:Landroid/graphics/Rect;
    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 205
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_result:Landroid/graphics/Rect;
    :sswitch_c
    const-string v8, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 209
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_a

    .line 210
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 215
    .restart local v1       #_arg1:Landroid/content/ComponentName;
    :goto_a
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->getPosition(ILandroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v4

    .line 216
    .restart local v4       #_result:Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v4, :cond_b

    .line 218
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    invoke-virtual {v4, p3, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 213
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_result:Landroid/graphics/Rect;
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_a

    .line 222
    .restart local v4       #_result:Landroid/graphics/Rect;
    :cond_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 228
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_result:Landroid/graphics/Rect;
    :sswitch_d
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    .line 233
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 239
    .restart local v1       #_arg1:Landroid/content/ComponentName;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .restart local v2       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 242
    .restart local v3       #_arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->updatePosition(ILandroid/content/ComponentName;II)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 236
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    :cond_c
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_b

    .line 248
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :sswitch_e
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d

    .line 253
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 258
    .restart local v1       #_arg1:Landroid/content/ComponentName;
    :goto_c
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->removePosition(ILandroid/content/ComponentName;)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 256
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_c

    .line 264
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :sswitch_f
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 268
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_e

    .line 269
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 275
    .restart local v1       #_arg1:Landroid/content/ComponentName;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    .restart local v2       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 278
    .restart local v3       #_arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->setLastSize(ILandroid/content/ComponentName;II)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 272
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    :cond_e
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_d

    .line 284
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :sswitch_10
    const-string v8, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 290
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 291
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->isOccupiedPosition(III)Z

    move-result v4

    .line 292
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v4, :cond_f

    move v7, v6

    :cond_f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 298
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v4           #_result:Z
    :sswitch_11
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    move-result-object v0

    .line 302
    .local v0, _arg0:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_10

    .line 303
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 309
    .local v1, _arg1:Landroid/content/ComponentName;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 310
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;I)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 306
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v2           #_arg2:I
    :cond_10
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_e

    .line 316
    .end local v0           #_arg0:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :sswitch_12
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    move-result-object v0

    .line 319
    .restart local v0       #_arg0:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 325
    .end local v0           #_arg0:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    :sswitch_13
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_11

    .line 328
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 334
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_12

    .line 335
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 340
    .local v1, _arg1:Landroid/os/Bundle;
    :goto_10
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 331
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/os/Bundle;
    :cond_11
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_f

    .line 338
    :cond_12
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/Bundle;
    goto :goto_10

    .line 346
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/os/Bundle;
    :sswitch_14
    const-string v8, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_13

    .line 349
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 354
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_11
    invoke-virtual {p0, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->getInstanceState(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    .line 355
    .local v4, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    if-eqz v4, :cond_14

    .line 357
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    invoke-virtual {v4, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 352
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_result:Landroid/os/Bundle;
    :cond_13
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_11

    .line 361
    .restart local v4       #_result:Landroid/os/Bundle;
    :cond_14
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 367
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_result:Landroid/os/Bundle;
    :sswitch_15
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->getAllRunningMiniApps()Ljava/util/List;

    move-result-object v5

    .line 369
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 375
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_16
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_15

    .line 378
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 383
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_12
    invoke-virtual {p0, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->getMiniModeAppCallback(Landroid/content/ComponentName;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    move-result-object v4

    .line 384
    .local v4, _result:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    if-eqz v4, :cond_16

    invoke-interface {v4}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_13
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 381
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_result:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    :cond_15
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_12

    .line 385
    .restart local v4       #_result:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    :cond_16
    const/4 v7, 0x0

    goto :goto_13

    .line 38
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
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
