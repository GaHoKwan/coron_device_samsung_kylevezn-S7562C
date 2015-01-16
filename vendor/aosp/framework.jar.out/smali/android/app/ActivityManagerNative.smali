.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 1837
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 128
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 77
    if-nez p0, :cond_1

    .line 78
    const/4 v0, 0x0

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 82
    .local v0, in:Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroid/app/ActivityManagerProxy;

    .end local v0           #in:Landroid/app/IActivityManager;
    invoke-direct {v0, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 12
    .parameter "intent"
    .parameter "permission"

    .prologue
    .line 113
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Binder;->getOrigCallingUser()I

    move-result v11

    move-object v2, p0

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 103
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "ps"

    .prologue
    .line 122
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1834
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 192
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
    .line 133
    sparse-switch p1, :sswitch_data_0

    .line 1830
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 136
    :sswitch_0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 138
    .local v104, b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 139
    .local v6, app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 140
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 142
    .local v9, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 143
    .local v10, resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 144
    .local v11, requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 145
    .local v12, startFlags:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 146
    .local v13, profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .line 148
    .local v14, profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .local v15, options:Landroid/os/Bundle;
    :goto_2
    move-object/from16 v5, p0

    .line 150
    invoke-virtual/range {v5 .. v15}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v166

    .line 153
    .local v166, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    move-object/from16 v0, p3

    move/from16 v1, v166

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v5, 0x1

    goto :goto_0

    .line 146
    .end local v14           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v15           #options:Landroid/os/Bundle;
    .end local v166           #result:I
    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    .line 148
    .restart local v14       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    const/4 v15, 0x0

    goto :goto_2

    .line 160
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v12           #startFlags:I
    .end local v13           #profileFile:Ljava/lang/String;
    .end local v14           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 162
    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 163
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 164
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 165
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 166
    .restart local v9       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 167
    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 168
    .restart local v11       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 169
    .restart local v12       #startFlags:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 170
    .restart local v13       #profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .line 172
    .restart local v14       #profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_4
    move-object/from16 v5, p0

    .line 174
    invoke-virtual/range {v5 .. v15}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)Landroid/app/IActivityManager$WaitResult;

    move-result-object v166

    .line 177
    .local v166, result:Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    const/4 v5, 0x0

    move-object/from16 v0, v166

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 179
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 170
    .end local v14           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v15           #options:Landroid/os/Bundle;
    .end local v166           #result:Landroid/app/IActivityManager$WaitResult;
    :cond_2
    const/4 v14, 0x0

    goto :goto_3

    .line 172
    .restart local v14       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v15, 0x0

    goto :goto_4

    .line 184
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v12           #startFlags:I
    .end local v13           #profileFile:Ljava/lang/String;
    .end local v14           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 186
    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 187
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 188
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 189
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 190
    .restart local v9       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 191
    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 192
    .restart local v11       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 193
    .restart local v12       #startFlags:I
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/Configuration;

    .line 194
    .local v24, config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_5
    move-object/from16 v16, p0

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v12

    move-object/from16 v25, v15

    .line 196
    invoke-virtual/range {v16 .. v25}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;)I

    move-result v166

    .line 198
    .local v166, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    move-object/from16 v0, p3

    move/from16 v1, v166

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 194
    .end local v15           #options:Landroid/os/Bundle;
    .end local v166           #result:I
    :cond_4
    const/4 v15, 0x0

    goto :goto_5

    .line 205
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v12           #startFlags:I
    .end local v24           #config:Landroid/content/res/Configuration;
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 207
    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 208
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    .line 209
    .local v7, intent:Landroid/content/IntentSender;
    const/16 v28, 0x0

    .line 210
    .local v28, fillInIntent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 211
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    .end local v28           #fillInIntent:Landroid/content/Intent;
    check-cast v28, Landroid/content/Intent;

    .line 213
    .restart local v28       #fillInIntent:Landroid/content/Intent;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 214
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 215
    .restart local v9       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 216
    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 217
    .restart local v11       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 218
    .local v33, flagsMask:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 219
    .local v34, flagsValues:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_6
    move-object/from16 v25, p0

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    move/from16 v32, v11

    move-object/from16 v35, v15

    .line 221
    invoke-virtual/range {v25 .. v35}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v166

    .line 224
    .restart local v166       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    move-object/from16 v0, p3

    move/from16 v1, v166

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 219
    .end local v15           #options:Landroid/os/Bundle;
    .end local v166           #result:I
    :cond_6
    const/4 v15, 0x0

    goto :goto_6

    .line 231
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/IntentSender;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v28           #fillInIntent:Landroid/content/Intent;
    .end local v33           #flagsMask:I
    .end local v34           #flagsValues:I
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v108

    .line 233
    .local v108, callingActivity:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 234
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .line 236
    .restart local v15       #options:Landroid/os/Bundle;
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v1, v7, v15}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v166

    .line 237
    .local v166, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    if-eqz v166, :cond_8

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 234
    .end local v15           #options:Landroid/os/Bundle;
    .end local v166           #result:Z
    :cond_7
    const/4 v15, 0x0

    goto :goto_7

    .line 238
    .restart local v15       #options:Landroid/os/Bundle;
    .restart local v166       #result:Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    .line 243
    .end local v7           #intent:Landroid/content/Intent;
    .end local v15           #options:Landroid/os/Bundle;
    .end local v108           #callingActivity:Landroid/os/IBinder;
    .end local v166           #result:Z
    :sswitch_5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 245
    .local v49, token:Landroid/os/IBinder;
    const/16 v41, 0x0

    .line 246
    .local v41, resultData:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 247
    .local v40, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 248
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #resultData:Landroid/content/Intent;
    check-cast v41, Landroid/content/Intent;

    .line 250
    .restart local v41       #resultData:Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    move-result v165

    .line 251
    .local v165, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v165, :cond_a

    const/4 v5, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 252
    :cond_a
    const/4 v5, 0x0

    goto :goto_9

    .line 257
    .end local v40           #resultCode:I
    .end local v41           #resultData:Landroid/content/Intent;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v165           #res:Z
    :sswitch_6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 259
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 260
    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 261
    .restart local v11       #requestCode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v10, v11}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 267
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 269
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v165

    .line 270
    .restart local v165       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v165, :cond_b

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 271
    :cond_b
    const/4 v5, 0x0

    goto :goto_a

    .line 276
    .end local v49           #token:Landroid/os/IBinder;
    .end local v165           #res:Z
    :sswitch_8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 278
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v165

    .line 279
    .restart local v165       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v165, :cond_c

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 280
    :cond_c
    const/4 v5, 0x0

    goto :goto_b

    .line 286
    .end local v49           #token:Landroid/os/IBinder;
    .end local v165           #res:Z
    :sswitch_9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 288
    .restart local v104       #b:Landroid/os/IBinder;
    if-eqz v104, :cond_d

    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 290
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 291
    .local v18, packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 292
    if-eqz v104, :cond_e

    invoke-static/range {v104 .. v104}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v19

    .line 294
    .local v19, rec:Landroid/content/IIntentReceiver;
    :goto_d
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/IntentFilter;

    .line 295
    .local v20, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .local v21, perm:Ljava/lang/String;
    move-object/from16 v16, p0

    move-object/from16 v17, v6

    .line 296
    invoke-virtual/range {v16 .. v21}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 297
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    if-eqz v7, :cond_f

    .line 299
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 304
    :goto_e
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 288
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v18           #packageName:Ljava/lang/String;
    .end local v19           #rec:Landroid/content/IIntentReceiver;
    .end local v20           #filter:Landroid/content/IntentFilter;
    .end local v21           #perm:Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    goto :goto_c

    .line 292
    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v18       #packageName:Ljava/lang/String;
    :cond_e
    const/16 v19, 0x0

    goto :goto_d

    .line 302
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v19       #rec:Landroid/content/IIntentReceiver;
    .restart local v20       #filter:Landroid/content/IntentFilter;
    .restart local v21       #perm:Ljava/lang/String;
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 309
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v18           #packageName:Ljava/lang/String;
    .end local v19           #rec:Landroid/content/IIntentReceiver;
    .end local v20           #filter:Landroid/content/IntentFilter;
    .end local v21           #perm:Ljava/lang/String;
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 311
    .restart local v104       #b:Landroid/os/IBinder;
    if-nez v104, :cond_10

    .line 312
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 314
    :cond_10
    invoke-static/range {v104 .. v104}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v19

    .line 315
    .restart local v19       #rec:Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 322
    .end local v19           #rec:Landroid/content/IIntentReceiver;
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 324
    .restart local v104       #b:Landroid/os/IBinder;
    if-eqz v104, :cond_11

    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 326
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_f
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 327
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 328
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 329
    if-eqz v104, :cond_12

    invoke-static/range {v104 .. v104}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v9

    .line 331
    .local v9, resultTo:Landroid/content/IIntentReceiver;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 332
    .restart local v40       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 333
    .local v41, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v42

    .line 334
    .local v42, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 335
    .restart local v21       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    const/16 v44, 0x1

    .line 336
    .local v44, serialized:Z
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    const/16 v45, 0x1

    .line 337
    .local v45, sticky:Z
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .local v46, userId:I
    move-object/from16 v35, p0

    move-object/from16 v36, v6

    move-object/from16 v37, v7

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v43, v21

    .line 338
    invoke-virtual/range {v35 .. v46}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I

    move-result v165

    .line 341
    .local v165, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    move-object/from16 v0, p3

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 324
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/content/IIntentReceiver;
    .end local v21           #perm:Ljava/lang/String;
    .end local v40           #resultCode:I
    .end local v41           #resultData:Ljava/lang/String;
    .end local v42           #resultExtras:Landroid/os/Bundle;
    .end local v44           #serialized:Z
    .end local v45           #sticky:Z
    .end local v46           #userId:I
    .end local v165           #res:I
    :cond_11
    const/4 v6, 0x0

    goto :goto_f

    .line 329
    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v8       #resolvedType:Ljava/lang/String;
    :cond_12
    const/4 v9, 0x0

    goto :goto_10

    .line 335
    .restart local v9       #resultTo:Landroid/content/IIntentReceiver;
    .restart local v21       #perm:Ljava/lang/String;
    .restart local v40       #resultCode:I
    .restart local v41       #resultData:Ljava/lang/String;
    .restart local v42       #resultExtras:Landroid/os/Bundle;
    :cond_13
    const/16 v44, 0x0

    goto :goto_11

    .line 336
    .restart local v44       #serialized:Z
    :cond_14
    const/16 v45, 0x0

    goto :goto_12

    .line 348
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/content/IIntentReceiver;
    .end local v21           #perm:Ljava/lang/String;
    .end local v40           #resultCode:I
    .end local v41           #resultData:Ljava/lang/String;
    .end local v42           #resultExtras:Landroid/os/Bundle;
    .end local v44           #serialized:Z
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 350
    .restart local v104       #b:Landroid/os/IBinder;
    if-eqz v104, :cond_15

    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 351
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_13
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 352
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 353
    .restart local v46       #userId:I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v6, v7, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 350
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v46           #userId:I
    :cond_15
    const/4 v6, 0x0

    goto :goto_13

    .line 359
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 361
    .local v39, who:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 362
    .restart local v40       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 363
    .restart local v41       #resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v42

    .line 364
    .restart local v42       #resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    const/16 v43, 0x1

    .line 365
    .local v43, resultAbort:Z
    :goto_14
    if-eqz v39, :cond_16

    move-object/from16 v38, p0

    .line 366
    invoke-virtual/range {v38 .. v43}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 368
    :cond_16
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 364
    .end local v43           #resultAbort:Z
    :cond_17
    const/16 v43, 0x0

    goto :goto_14

    .line 373
    .end local v39           #who:Landroid/os/IBinder;
    .end local v40           #resultCode:I
    .end local v41           #resultData:Ljava/lang/String;
    .end local v42           #resultExtras:Landroid/os/Bundle;
    :sswitch_e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 376
    .restart local v6       #app:Landroid/app/IApplicationThread;
    if-eqz v6, :cond_18

    .line 377
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 379
    :cond_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 384
    .end local v6           #app:Landroid/app/IApplicationThread;
    :sswitch_f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 386
    .restart local v49       #token:Landroid/os/IBinder;
    const/16 v24, 0x0

    .line 387
    .restart local v24       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    .line 388
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #config:Landroid/content/res/Configuration;
    check-cast v24, Landroid/content/res/Configuration;

    .line 390
    .restart local v24       #config:Landroid/content/res/Configuration;
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    const/16 v173, 0x1

    .line 391
    .local v173, stopProfiling:Z
    :goto_15
    if-eqz v49, :cond_1a

    .line 392
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v24

    move/from16 v3, v173

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 394
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 390
    .end local v173           #stopProfiling:Z
    :cond_1b
    const/16 v173, 0x0

    goto :goto_15

    .line 399
    .end local v24           #config:Landroid/content/res/Configuration;
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_10
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 401
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 407
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_11
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 409
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v136

    .line 410
    .local v136, map:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v181, v5

    .line 412
    .local v181, thumbnail:Landroid/graphics/Bitmap;
    :goto_16
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Ljava/lang/CharSequence;

    .line 413
    .local v115, description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v136

    move-object/from16 v3, v181

    move-object/from16 v4, v115

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 410
    .end local v115           #description:Ljava/lang/CharSequence;
    .end local v181           #thumbnail:Landroid/graphics/Bitmap;
    :cond_1c
    const/16 v181, 0x0

    goto :goto_16

    .line 419
    .end local v49           #token:Landroid/os/IBinder;
    .end local v136           #map:Landroid/os/Bundle;
    :sswitch_12
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 421
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 427
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_13
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 429
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 435
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_14
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 437
    .restart local v49       #token:Landroid/os/IBinder;
    if-eqz v49, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v165

    .line 438
    .local v165, res:Ljava/lang/String;
    :goto_17
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    move-object/from16 v0, p3

    move-object/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 440
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 437
    .end local v165           #res:Ljava/lang/String;
    :cond_1d
    const/16 v165, 0x0

    goto :goto_17

    .line 444
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_15
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 446
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v112

    .line 447
    .local v112, cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    move-object/from16 v0, v112

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 449
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 453
    .end local v49           #token:Landroid/os/IBinder;
    .end local v112           #cn:Landroid/content/ComponentName;
    :sswitch_16
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v138

    .line 455
    .local v138, maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 456
    .local v59, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v160

    .line 457
    .local v160, receiverBinder:Landroid/os/IBinder;
    if-eqz v160, :cond_1e

    invoke-static/range {v160 .. v160}, Landroid/app/IThumbnailReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailReceiver;

    move-result-object v159

    .line 460
    .local v159, receiver:Landroid/app/IThumbnailReceiver;
    :goto_18
    move-object/from16 v0, p0

    move/from16 v1, v138

    move/from16 v2, v59

    move-object/from16 v3, v159

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v130

    .line 461
    .local v130, list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    if-eqz v130, :cond_1f

    invoke-interface/range {v130 .. v130}, Ljava/util/List;->size()I

    move-result v94

    .line 463
    .local v94, N:I
    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    const/16 v121, 0x0

    .local v121, i:I
    :goto_1a
    move/from16 v0, v121

    move/from16 v1, v94

    if-ge v0, v1, :cond_20

    .line 466
    move-object/from16 v0, v130

    move/from16 v1, v121

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v124

    check-cast v124, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 468
    .local v124, info:Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v124

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 465
    add-int/lit8 v121, v121, 0x1

    goto :goto_1a

    .line 457
    .end local v94           #N:I
    .end local v121           #i:I
    .end local v124           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v130           #list:Ljava/util/List;
    .end local v159           #receiver:Landroid/app/IThumbnailReceiver;
    :cond_1e
    const/16 v159, 0x0

    goto :goto_18

    .line 462
    .restart local v130       #list:Ljava/util/List;
    .restart local v159       #receiver:Landroid/app/IThumbnailReceiver;
    :cond_1f
    const/16 v94, -0x1

    goto :goto_19

    .line 470
    .restart local v94       #N:I
    .restart local v121       #i:I
    :cond_20
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 474
    .end local v59           #fl:I
    .end local v94           #N:I
    .end local v121           #i:I
    .end local v130           #list:Ljava/util/List;
    .end local v138           #maxNum:I
    .end local v159           #receiver:Landroid/app/IThumbnailReceiver;
    .end local v160           #receiverBinder:Landroid/os/IBinder;
    :sswitch_17
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v138

    .line 476
    .restart local v138       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 477
    .restart local v59       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v138

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getRecentTasks(II)Ljava/util/List;

    move-result-object v132

    .line 479
    .local v132, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    move-object/from16 v0, p3

    move-object/from16 v1, v132

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 481
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 485
    .end local v59           #fl:I
    .end local v132           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v138           #maxNum:I
    :sswitch_18
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v50

    .line 487
    .local v50, id:I
    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v107

    .line 488
    .local v107, bm:Landroid/app/ActivityManager$TaskThumbnails;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    if-eqz v107, :cond_21

    .line 490
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    const/4 v5, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$TaskThumbnails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 495
    :goto_1b
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 493
    :cond_21
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 499
    .end local v50           #id:I
    .end local v107           #bm:Landroid/app/ActivityManager$TaskThumbnails;
    :sswitch_19
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v138

    .line 501
    .restart local v138       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 502
    .restart local v59       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v138

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v130

    .line 503
    .restart local v130       #list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    if-eqz v130, :cond_22

    invoke-interface/range {v130 .. v130}, Ljava/util/List;->size()I

    move-result v94

    .line 505
    .restart local v94       #N:I
    :goto_1c
    move-object/from16 v0, p3

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    const/16 v121, 0x0

    .restart local v121       #i:I
    :goto_1d
    move/from16 v0, v121

    move/from16 v1, v94

    if-ge v0, v1, :cond_23

    .line 508
    move-object/from16 v0, v130

    move/from16 v1, v121

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v124

    check-cast v124, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 510
    .local v124, info:Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v124

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 507
    add-int/lit8 v121, v121, 0x1

    goto :goto_1d

    .line 504
    .end local v94           #N:I
    .end local v121           #i:I
    .end local v124           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_22
    const/16 v94, -0x1

    goto :goto_1c

    .line 512
    .restart local v94       #N:I
    .restart local v121       #i:I
    :cond_23
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 516
    .end local v59           #fl:I
    .end local v94           #N:I
    .end local v121           #i:I
    .end local v130           #list:Ljava/util/List;
    .end local v138           #maxNum:I
    :sswitch_1a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v131

    .line 518
    .local v131, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    move-object/from16 v0, p3

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 520
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 524
    .end local v131           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :sswitch_1b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v133

    .line 526
    .local v133, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    move-object/from16 v0, p3

    move-object/from16 v1, v133

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 528
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 532
    .end local v133           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :sswitch_1c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v134

    .line 534
    .local v134, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    move-object/from16 v0, p3

    move-object/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 536
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 540
    .end local v134           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_1d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v178

    .line 542
    .local v178, task:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 543
    .restart local v59       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .line 545
    .restart local v15       #options:Landroid/os/Bundle;
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v178

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2, v15}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 543
    .end local v15           #options:Landroid/os/Bundle;
    :cond_24
    const/4 v15, 0x0

    goto :goto_1e

    .line 551
    .end local v59           #fl:I
    .end local v178           #task:I
    :sswitch_1e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v178

    .line 553
    .restart local v178       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v178

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 559
    .end local v178           #task:I
    :sswitch_1f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 561
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    const/16 v144, 0x1

    .line 562
    .local v144, nonRoot:Z
    :goto_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v144

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v165

    .line 563
    .local v165, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    if-eqz v165, :cond_26

    const/4 v5, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 561
    .end local v144           #nonRoot:Z
    .end local v165           #res:Z
    :cond_25
    const/16 v144, 0x0

    goto :goto_1f

    .line 564
    .restart local v144       #nonRoot:Z
    .restart local v165       #res:Z
    :cond_26
    const/4 v5, 0x0

    goto :goto_20

    .line 569
    .end local v49           #token:Landroid/os/IBinder;
    .end local v144           #nonRoot:Z
    .end local v165           #res:Z
    :sswitch_20
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v178

    .line 571
    .restart local v178       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v178

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 577
    .end local v178           #task:I
    :sswitch_21
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 579
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    const/16 v146, 0x1

    .line 580
    .local v146, onlyRoot:Z
    :goto_21
    if-eqz v49, :cond_28

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v146

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v165

    .line 582
    .local v165, res:I
    :goto_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    move-object/from16 v0, p3

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 579
    .end local v146           #onlyRoot:Z
    .end local v165           #res:I
    :cond_27
    const/16 v146, 0x0

    goto :goto_21

    .line 580
    .restart local v146       #onlyRoot:Z
    :cond_28
    const/16 v165, -0x1

    goto :goto_22

    .line 588
    .end local v49           #token:Landroid/os/IBinder;
    .end local v146           #onlyRoot:Z
    :sswitch_22
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 590
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v181, v5

    .line 592
    .restart local v181       #thumbnail:Landroid/graphics/Bitmap;
    :goto_23
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Ljava/lang/CharSequence;

    .line 593
    .restart local v115       #description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v181

    move-object/from16 v3, v115

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 590
    .end local v115           #description:Ljava/lang/CharSequence;
    .end local v181           #thumbnail:Landroid/graphics/Bitmap;
    :cond_29
    const/16 v181, 0x0

    goto :goto_23

    .line 599
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_23
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 601
    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 602
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 603
    .local v143, name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/16 v171, 0x1

    .line 604
    .local v171, stable:Z
    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move/from16 v2, v171

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Z)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v114

    .line 605
    .local v114, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    if-eqz v114, :cond_2b

    .line 607
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    const/4 v5, 0x0

    move-object/from16 v0, v114

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 612
    :goto_25
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 603
    .end local v114           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v171           #stable:Z
    :cond_2a
    const/16 v171, 0x0

    goto :goto_24

    .line 610
    .restart local v114       #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v171       #stable:Z
    :cond_2b
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 616
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v104           #b:Landroid/os/IBinder;
    .end local v114           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v143           #name:Ljava/lang/String;
    .end local v171           #stable:Z
    :sswitch_24
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 618
    .restart local v143       #name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 619
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v114

    .line 620
    .restart local v114       #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    if-eqz v114, :cond_2c

    .line 622
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    const/4 v5, 0x0

    move-object/from16 v0, v114

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 627
    :goto_26
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 625
    :cond_2c
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 631
    .end local v49           #token:Landroid/os/IBinder;
    .end local v114           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v143           #name:Ljava/lang/String;
    :sswitch_25
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 633
    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 634
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v155

    .line 636
    .local v155, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v155

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 642
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v104           #b:Landroid/os/IBinder;
    .end local v155           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :sswitch_26
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 644
    .restart local v104       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v171

    .line 645
    .local v171, stable:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v182

    .line 646
    .local v182, unstable:I
    move-object/from16 v0, p0

    move-object/from16 v1, v104

    move/from16 v2, v171

    move/from16 v3, v182

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v165

    .line 647
    .local v165, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    if-eqz v165, :cond_2d

    const/4 v5, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 648
    :cond_2d
    const/4 v5, 0x0

    goto :goto_27

    .line 653
    .end local v104           #b:Landroid/os/IBinder;
    .end local v165           #res:Z
    .end local v171           #stable:I
    .end local v182           #unstable:I
    :sswitch_27
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 655
    .restart local v104       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 661
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_28
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 663
    .restart local v104       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    const/16 v171, 0x1

    .line 664
    .local v171, stable:Z
    :goto_28
    move-object/from16 v0, p0

    move-object/from16 v1, v104

    move/from16 v2, v171

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 663
    .end local v171           #stable:Z
    :cond_2e
    const/16 v171, 0x0

    goto :goto_28

    .line 670
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_29
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 672
    .restart local v143       #name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 673
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 679
    .end local v49           #token:Landroid/os/IBinder;
    .end local v143           #name:Ljava/lang/String;
    :sswitch_2a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/content/ComponentName;

    .line 681
    .local v113, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v149

    .line 682
    .local v149, pi:Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    move-object/from16 v0, v149

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 684
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 688
    .end local v113           #comp:Landroid/content/ComponentName;
    .end local v149           #pi:Landroid/app/PendingIntent;
    :sswitch_2b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 690
    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 691
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/content/Intent;

    .line 692
    .local v56, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 693
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v6, v1, v8}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v112

    .line 694
    .restart local v112       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    move-object/from16 v0, v112

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 696
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 700
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v56           #service:Landroid/content/Intent;
    .end local v104           #b:Landroid/os/IBinder;
    .end local v112           #cn:Landroid/content/ComponentName;
    :sswitch_2c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 702
    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 703
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/content/Intent;

    .line 704
    .restart local v56       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 705
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v6, v1, v8}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v165

    .line 706
    .local v165, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    move-object/from16 v0, p3

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 712
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v56           #service:Landroid/content/Intent;
    .end local v104           #b:Landroid/os/IBinder;
    .end local v165           #res:I
    :sswitch_2d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v48

    .line 714
    .local v48, className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 715
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v172

    .line 716
    .local v172, startId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    move/from16 v3, v172

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v165

    .line 717
    .local v165, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    if-eqz v165, :cond_2f

    const/4 v5, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 718
    :cond_2f
    const/4 v5, 0x0

    goto :goto_29

    .line 723
    .end local v48           #className:Landroid/content/ComponentName;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v165           #res:Z
    .end local v172           #startId:I
    :sswitch_2e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v48

    .line 725
    .restart local v48       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 726
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v50

    .line 727
    .restart local v50       #id:I
    const/16 v51, 0x0

    .line 728
    .local v51, notification:Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_30

    .line 729
    sget-object v5, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v51

    .end local v51           #notification:Landroid/app/Notification;
    check-cast v51, Landroid/app/Notification;

    .line 731
    .restart local v51       #notification:Landroid/app/Notification;
    :cond_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    const/16 v52, 0x1

    .local v52, removeNotification:Z
    :goto_2a
    move-object/from16 v47, p0

    .line 732
    invoke-virtual/range {v47 .. v52}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 733
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 731
    .end local v52           #removeNotification:Z
    :cond_31
    const/16 v52, 0x0

    goto :goto_2a

    .line 738
    .end local v48           #className:Landroid/content/ComponentName;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v50           #id:I
    .end local v51           #notification:Landroid/app/Notification;
    :sswitch_2f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 740
    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 741
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 742
    .restart local v49       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/content/Intent;

    .line 743
    .restart local v56       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 744
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 746
    .restart local v59       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 747
    .restart local v46       #userId:I
    invoke-static/range {v104 .. v104}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v58

    .local v58, conn:Landroid/app/IServiceConnection;
    move-object/from16 v53, p0

    move-object/from16 v54, v6

    move-object/from16 v55, v49

    move-object/from16 v57, v8

    move/from16 v60, v46

    .line 748
    invoke-virtual/range {v53 .. v60}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result v165

    .line 749
    .local v165, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    move-object/from16 v0, p3

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 755
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v46           #userId:I
    .end local v49           #token:Landroid/os/IBinder;
    .end local v56           #service:Landroid/content/Intent;
    .end local v58           #conn:Landroid/app/IServiceConnection;
    .end local v59           #fl:I
    .end local v104           #b:Landroid/os/IBinder;
    .end local v165           #res:I
    :sswitch_30
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 757
    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v58

    .line 758
    .restart local v58       #conn:Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v165

    .line 759
    .local v165, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    if-eqz v165, :cond_32

    const/4 v5, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 760
    :cond_32
    const/4 v5, 0x0

    goto :goto_2b

    .line 765
    .end local v58           #conn:Landroid/app/IServiceConnection;
    .end local v104           #b:Landroid/os/IBinder;
    .end local v165           #res:Z
    :sswitch_31
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 767
    .restart local v49       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 768
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v56

    .line 769
    .local v56, service:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v7, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 770
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 775
    .end local v7           #intent:Landroid/content/Intent;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v56           #service:Landroid/os/IBinder;
    :sswitch_32
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 777
    .restart local v49       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 778
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_33

    const/16 v117, 0x1

    .line 779
    .local v117, doRebind:Z
    :goto_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v117

    invoke-virtual {v0, v1, v7, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 780
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 778
    .end local v117           #doRebind:Z
    :cond_33
    const/16 v117, 0x0

    goto :goto_2c

    .line 785
    .end local v7           #intent:Landroid/content/Intent;
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_33
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 787
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 788
    .local v67, type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v172

    .line 789
    .restart local v172       #startId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v165

    .line 790
    .local v165, res:I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v67

    move/from16 v3, v172

    move/from16 v4, v165

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 791
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 796
    .end local v49           #token:Landroid/os/IBinder;
    .end local v67           #type:I
    .end local v165           #res:I
    .end local v172           #startId:I
    :sswitch_34
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v48

    .line 798
    .restart local v48       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 799
    .restart local v13       #profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 800
    .restart local v59       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v64

    .line 801
    .local v64, arguments:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 802
    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v65

    .local v65, w:Landroid/app/IInstrumentationWatcher;
    move-object/from16 v60, p0

    move-object/from16 v61, v48

    move-object/from16 v62, v13

    move/from16 v63, v59

    .line 803
    invoke-virtual/range {v60 .. v65}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z

    move-result v165

    .line 804
    .local v165, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    if-eqz v165, :cond_34

    const/4 v5, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 806
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 805
    :cond_34
    const/4 v5, 0x0

    goto :goto_2d

    .line 811
    .end local v13           #profileFile:Ljava/lang/String;
    .end local v48           #className:Landroid/content/ComponentName;
    .end local v59           #fl:I
    .end local v64           #arguments:Landroid/os/Bundle;
    .end local v65           #w:Landroid/app/IInstrumentationWatcher;
    .end local v104           #b:Landroid/os/IBinder;
    .end local v165           #res:Z
    :sswitch_35
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 813
    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 814
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 815
    .restart local v40       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v167

    .line 816
    .local v167, results:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v167

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 817
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 822
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v40           #resultCode:I
    .end local v104           #b:Landroid/os/IBinder;
    .end local v167           #results:Landroid/os/Bundle;
    :sswitch_36
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v24

    .line 824
    .restart local v24       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    const/4 v5, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 826
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 830
    .end local v24           #config:Landroid/content/res/Configuration;
    :sswitch_37
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/Configuration;

    .line 832
    .restart local v24       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 833
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 838
    .end local v24           #config:Landroid/content/res/Configuration;
    :sswitch_38
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 840
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v164

    .line 841
    .local v164, requestedOrientation:I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v164

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 842
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 847
    .end local v49           #token:Landroid/os/IBinder;
    .end local v164           #requestedOrientation:I
    :sswitch_39
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 849
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v162

    .line 850
    .local v162, req:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    move-object/from16 v0, p3

    move/from16 v1, v162

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 856
    .end local v49           #token:Landroid/os/IBinder;
    .end local v162           #req:I
    :sswitch_3a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 858
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v112

    .line 859
    .restart local v112       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    move-object/from16 v0, v112

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 861
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 865
    .end local v49           #token:Landroid/os/IBinder;
    .end local v112           #cn:Landroid/content/ComponentName;
    :sswitch_3b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 867
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 869
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 873
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_3c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 875
    .restart local v67       #type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 876
    .restart local v18       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 877
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 878
    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 881
    .restart local v11       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_35

    .line 882
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v72

    check-cast v72, [Landroid/content/Intent;

    .line 883
    .local v72, requestIntents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v73

    .line 888
    .local v73, requestResolvedTypes:[Ljava/lang/String;
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 889
    .restart local v59       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_2f
    move-object/from16 v66, p0

    move-object/from16 v68, v18

    move-object/from16 v69, v49

    move-object/from16 v70, v10

    move/from16 v71, v11

    move/from16 v74, v59

    move-object/from16 v75, v15

    .line 891
    invoke-virtual/range {v66 .. v75}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v165

    .line 894
    .local v165, res:Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    if-eqz v165, :cond_37

    invoke-interface/range {v165 .. v165}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 896
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 885
    .end local v15           #options:Landroid/os/Bundle;
    .end local v59           #fl:I
    .end local v72           #requestIntents:[Landroid/content/Intent;
    .end local v73           #requestResolvedTypes:[Ljava/lang/String;
    .end local v165           #res:Landroid/content/IIntentSender;
    :cond_35
    const/16 v72, 0x0

    .line 886
    .restart local v72       #requestIntents:[Landroid/content/Intent;
    const/16 v73, 0x0

    .restart local v73       #requestResolvedTypes:[Ljava/lang/String;
    goto :goto_2e

    .line 889
    .restart local v59       #fl:I
    :cond_36
    const/4 v15, 0x0

    goto :goto_2f

    .line 895
    .restart local v15       #options:Landroid/os/Bundle;
    .restart local v165       #res:Landroid/content/IIntentSender;
    :cond_37
    const/4 v5, 0x0

    goto :goto_30

    .line 900
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v15           #options:Landroid/os/Bundle;
    .end local v18           #packageName:Ljava/lang/String;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v59           #fl:I
    .end local v67           #type:I
    .end local v72           #requestIntents:[Landroid/content/Intent;
    .end local v73           #requestResolvedTypes:[Ljava/lang/String;
    .end local v165           #res:Landroid/content/IIntentSender;
    :sswitch_3d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v157

    .line 903
    .local v157, r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 909
    .end local v157           #r:Landroid/content/IIntentSender;
    :sswitch_3e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v157

    .line 912
    .restart local v157       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v165

    .line 913
    .local v165, res:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    move-object/from16 v0, p3

    move-object/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 915
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 919
    .end local v157           #r:Landroid/content/IIntentSender;
    .end local v165           #res:Ljava/lang/String;
    :sswitch_3f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v157

    .line 922
    .restart local v157       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v165

    .line 923
    .local v165, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    move-object/from16 v0, p3

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 929
    .end local v157           #r:Landroid/content/IIntentSender;
    .end local v165           #res:I
    :sswitch_40
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v137

    .line 931
    .local v137, max:I
    move-object/from16 v0, p0

    move/from16 v1, v137

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 932
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 937
    .end local v137           #max:I
    :sswitch_41
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v129

    .line 939
    .local v129, limit:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    move-object/from16 v0, p3

    move/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 945
    .end local v129           #limit:I
    :sswitch_42
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 947
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v150

    .line 948
    .local v150, pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    const/16 v127, 0x1

    .line 949
    .local v127, isForeground:Z
    :goto_31
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v150

    move/from16 v3, v127

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 950
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 948
    .end local v127           #isForeground:Z
    :cond_38
    const/16 v127, 0x0

    goto :goto_31

    .line 955
    .end local v49           #token:Landroid/os/IBinder;
    .end local v150           #pid:I
    :sswitch_43
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 957
    .restart local v21       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v150

    .line 958
    .restart local v150       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 959
    .local v81, uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v150

    move/from16 v3, v81

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v165

    .line 960
    .restart local v165       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    move-object/from16 v0, p3

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 962
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 966
    .end local v21           #perm:Ljava/lang/String;
    .end local v81           #uid:I
    .end local v150           #pid:I
    .end local v165           #res:I
    :sswitch_44
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .line 968
    .local v86, uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v150

    .line 969
    .restart local v150       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 970
    .restart local v81       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 971
    .local v87, mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move/from16 v2, v150

    move/from16 v3, v81

    move/from16 v4, v87

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v165

    .line 972
    .restart local v165       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    move-object/from16 v0, p3

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 978
    .end local v81           #uid:I
    .end local v86           #uri:Landroid/net/Uri;
    .end local v87           #mode:I
    .end local v150           #pid:I
    .end local v165           #res:I
    :sswitch_45
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 980
    .restart local v18       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v145

    .line 982
    .local v145, observer:Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 983
    .restart local v46       #userId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v145

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v165

    .line 984
    .local v165, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    if-eqz v165, :cond_39

    const/4 v5, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 986
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 985
    :cond_39
    const/4 v5, 0x0

    goto :goto_32

    .line 990
    .end local v18           #packageName:Ljava/lang/String;
    .end local v46           #userId:I
    .end local v145           #observer:Landroid/content/pm/IPackageDataObserver;
    .end local v165           #res:Z
    :sswitch_46
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 992
    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 993
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .line 994
    .local v85, targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .line 995
    .restart local v86       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 996
    .restart local v87       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v86

    move/from16 v3, v87

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 997
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1002
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v85           #targetPkg:Ljava/lang/String;
    .end local v86           #uri:Landroid/net/Uri;
    .end local v87           #mode:I
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_47
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 1004
    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1005
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .line 1006
    .restart local v86       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 1007
    .restart local v87       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move/from16 v2, v87

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V

    .line 1008
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1013
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v86           #uri:Landroid/net/Uri;
    .end local v87           #mode:I
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_48
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 1015
    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1016
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    const/16 v188, 0x1

    .line 1017
    .local v188, waiting:Z
    :goto_33
    move-object/from16 v0, p0

    move/from16 v1, v188

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1018
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1016
    .end local v188           #waiting:Z
    :cond_3a
    const/16 v188, 0x0

    goto :goto_33

    .line 1023
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_49
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    new-instance v140, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v140 .. v140}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1025
    .local v140, mi:Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    const/4 v5, 0x0

    move-object/from16 v0, v140

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1028
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1032
    .end local v140           #mi:Landroid/app/ActivityManager$MemoryInfo;
    :sswitch_4a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1039
    :sswitch_4b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v86

    .line 1041
    .restart local v86       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v148

    .line 1042
    .local v148, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    if-eqz v148, :cond_3b

    .line 1044
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    const/4 v5, 0x1

    move-object/from16 v0, v148

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1049
    :goto_34
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1047
    :cond_3b
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    .line 1053
    .end local v86           #uri:Landroid/net/Uri;
    .end local v148           #pfd:Landroid/os/ParcelFileDescriptor;
    :sswitch_4c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->goingToSleep()V

    .line 1055
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1060
    :sswitch_4d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->wakingUp()V

    .line 1062
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1063
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1067
    :sswitch_4e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c

    const/4 v5, 0x1

    :goto_35
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->setLockScreenShown(Z)V

    .line 1069
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1068
    :cond_3c
    const/4 v5, 0x0

    goto :goto_35

    .line 1074
    :sswitch_4f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v153

    .line 1076
    .local v153, pn:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3d

    const/16 v190, 0x1

    .line 1077
    .local v190, wfd:Z
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3e

    const/16 v147, 0x1

    .line 1078
    .local v147, per:Z
    :goto_37
    move-object/from16 v0, p0

    move-object/from16 v1, v153

    move/from16 v2, v190

    move/from16 v3, v147

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1079
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1076
    .end local v147           #per:Z
    .end local v190           #wfd:Z
    :cond_3d
    const/16 v190, 0x0

    goto :goto_36

    .line 1077
    .restart local v190       #wfd:Z
    :cond_3e
    const/16 v147, 0x0

    goto :goto_37

    .line 1084
    .end local v153           #pn:Ljava/lang/String;
    .end local v190           #wfd:Z
    :sswitch_50
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f

    const/16 v118, 0x1

    .line 1086
    .local v118, enabled:Z
    :goto_38
    move-object/from16 v0, p0

    move/from16 v1, v118

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1085
    .end local v118           #enabled:Z
    :cond_3f
    const/16 v118, 0x0

    goto :goto_38

    .line 1092
    :sswitch_51
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v189

    .line 1095
    .local v189, watcher:Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1096
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1100
    .end local v189           #watcher:Landroid/app/IActivityController;
    :sswitch_52
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1107
    :sswitch_53
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v126

    .line 1110
    .local v126, is:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;)V

    .line 1111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1116
    .end local v126           #is:Landroid/content/IIntentSender;
    :sswitch_54
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v151

    .line 1118
    .local v151, pids:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v158

    .line 1119
    .local v158, reason:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_40

    const/16 v168, 0x1

    .line 1120
    .local v168, secure:Z
    :goto_39
    move-object/from16 v0, p0

    move-object/from16 v1, v151

    move-object/from16 v2, v158

    move/from16 v3, v168

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v165

    .line 1121
    .restart local v165       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    if-eqz v165, :cond_41

    const/4 v5, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1119
    .end local v165           #res:Z
    .end local v168           #secure:Z
    :cond_40
    const/16 v168, 0x0

    goto :goto_39

    .line 1122
    .restart local v165       #res:Z
    .restart local v168       #secure:Z
    :cond_41
    const/4 v5, 0x0

    goto :goto_3a

    .line 1127
    .end local v151           #pids:[I
    .end local v158           #reason:Ljava/lang/String;
    .end local v165           #res:Z
    .end local v168           #secure:Z
    :sswitch_55
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v158

    .line 1129
    .restart local v158       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v158

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v165

    .line 1130
    .restart local v165       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    if-eqz v165, :cond_42

    const/4 v5, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1131
    :cond_42
    const/4 v5, 0x0

    goto :goto_3b

    .line 1136
    .end local v158           #reason:Ljava/lang/String;
    .end local v165           #res:Z
    :sswitch_56
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v152

    .line 1138
    .local v152, pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v111

    .line 1139
    .local v111, cls:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v98

    .line 1140
    .local v98, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v123

    .line 1141
    .local v123, indata:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move-object/from16 v2, v111

    move-object/from16 v3, v98

    move-object/from16 v4, v123

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1147
    .end local v98           #action:Ljava/lang/String;
    .end local v111           #cls:Ljava/lang/String;
    .end local v123           #indata:Ljava/lang/String;
    .end local v152           #pkg:Ljava/lang/String;
    :sswitch_57
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1149
    .local v6, app:Landroid/os/IBinder;
    new-instance v110, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v110

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1150
    .local v110, ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1156
    .end local v6           #app:Landroid/os/IBinder;
    .end local v110           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    :sswitch_58
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1158
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v176

    .line 1159
    .local v176, tag:Ljava/lang/String;
    new-instance v110, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v110

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1160
    .restart local v110       #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    move-object/from16 v2, v110

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v165

    .line 1161
    .restart local v165       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    if-eqz v165, :cond_43

    const/4 v5, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1163
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1162
    :cond_43
    const/4 v5, 0x0

    goto :goto_3c

    .line 1167
    .end local v6           #app:Landroid/os/IBinder;
    .end local v110           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v165           #res:Z
    .end local v176           #tag:Ljava/lang/String;
    :sswitch_59
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1169
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v187

    .line 1170
    .local v187, violationMask:I
    new-instance v124, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v124

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1171
    .local v124, info:Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move/from16 v1, v187

    move-object/from16 v2, v124

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1177
    .end local v6           #app:Landroid/os/IBinder;
    .end local v124           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v187           #violationMask:I
    :sswitch_5a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v169

    .line 1179
    .local v169, sig:I
    move-object/from16 v0, p0

    move/from16 v1, v169

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1185
    .end local v169           #sig:I
    :sswitch_5b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1187
    .restart local v18       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 1188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1193
    .end local v18           #packageName:Ljava/lang/String;
    :sswitch_5c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1200
    :sswitch_5d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1202
    .restart local v18       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;)V

    .line 1203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1208
    .end local v18           #packageName:Ljava/lang/String;
    :sswitch_5e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    new-instance v124, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v124 .. v124}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1211
    .local v124, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    const/4 v5, 0x0

    move-object/from16 v0, v124

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1214
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1218
    .end local v124           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :sswitch_5f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1219
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v24

    .line 1220
    .local v24, config:Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    const/4 v5, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1222
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1226
    .end local v24           #config:Landroid/content/pm/ConfigurationInfo;
    :sswitch_60
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v75

    .line 1228
    .local v75, process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_44

    const/16 v76, 0x1

    .line 1229
    .local v76, start:Z
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 1230
    .local v79, profileType:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v77

    .line 1231
    .local v77, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_45

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v78

    .local v78, fd:Landroid/os/ParcelFileDescriptor;
    :goto_3e
    move-object/from16 v74, p0

    .line 1233
    invoke-virtual/range {v74 .. v79}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Z

    move-result v165

    .line 1234
    .restart local v165       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    if-eqz v165, :cond_46

    const/4 v5, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1236
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1228
    .end local v76           #start:Z
    .end local v77           #path:Ljava/lang/String;
    .end local v78           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v79           #profileType:I
    .end local v165           #res:Z
    :cond_44
    const/16 v76, 0x0

    goto :goto_3d

    .line 1231
    .restart local v76       #start:Z
    .restart local v77       #path:Ljava/lang/String;
    .restart local v79       #profileType:I
    :cond_45
    const/16 v78, 0x0

    goto :goto_3e

    .line 1235
    .restart local v78       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v165       #res:Z
    :cond_46
    const/4 v5, 0x0

    goto :goto_3f

    .line 1240
    .end local v75           #process:Ljava/lang/String;
    .end local v76           #start:Z
    .end local v77           #path:Ljava/lang/String;
    .end local v78           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v79           #profileType:I
    .end local v165           #res:Z
    :sswitch_61
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v165

    .line 1242
    .restart local v165       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    if-eqz v165, :cond_47

    const/4 v5, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1244
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1243
    :cond_47
    const/4 v5, 0x0

    goto :goto_40

    .line 1248
    .end local v165           #res:Z
    :sswitch_62
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1249
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1255
    :sswitch_63
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1256
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1262
    :sswitch_64
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1263
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/content/Intent;

    .line 1264
    .local v56, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1265
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v106

    .line 1266
    .local v106, binder:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    move-object/from16 v0, p3

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1268
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1272
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v56           #service:Landroid/content/Intent;
    .end local v106           #binder:Landroid/os/IBinder;
    :sswitch_65
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v124

    check-cast v124, Landroid/content/pm/ApplicationInfo;

    .line 1274
    .local v124, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v105

    .line 1275
    .local v105, backupRestoreMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    move/from16 v2, v105

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v175

    .line 1276
    .local v175, success:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    if-eqz v175, :cond_48

    const/4 v5, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1277
    :cond_48
    const/4 v5, 0x0

    goto :goto_41

    .line 1282
    .end local v105           #backupRestoreMode:I
    .end local v124           #info:Landroid/content/pm/ApplicationInfo;
    .end local v175           #success:Z
    :sswitch_66
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1284
    .restart local v18       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v99

    .line 1285
    .local v99, agent:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v99

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1287
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1291
    .end local v18           #packageName:Ljava/lang/String;
    .end local v99           #agent:Landroid/os/IBinder;
    :sswitch_67
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v124

    check-cast v124, Landroid/content/pm/ApplicationInfo;

    .line 1293
    .restart local v124       #info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1300
    .end local v124           #info:Landroid/content/pm/ApplicationInfo;
    :sswitch_68
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 1302
    .restart local v81       #uid:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 1303
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1304
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 1305
    .local v9, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1306
    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1307
    .restart local v11       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1308
    .restart local v12       #startFlags:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_49

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_42
    move-object/from16 v80, p0

    move-object/from16 v82, v7

    move-object/from16 v83, v8

    move-object/from16 v84, v9

    move-object/from16 v85, v10

    move/from16 v86, v11

    move/from16 v87, v12

    move-object/from16 v88, v15

    .line 1310
    invoke-virtual/range {v80 .. v88}, Landroid/app/ActivityManagerNative;->startActivityInPackage(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v166

    .line 1312
    .local v166, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    move-object/from16 v0, p3

    move/from16 v1, v166

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1314
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1308
    .end local v15           #options:Landroid/os/Bundle;
    .end local v166           #result:I
    :cond_49
    const/4 v15, 0x0

    goto :goto_42

    .line 1318
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v12           #startFlags:I
    .end local v81           #uid:I
    :sswitch_69
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v152

    .line 1320
    .restart local v152       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 1321
    .restart local v81       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationWithUid(Ljava/lang/String;I)V

    .line 1322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1327
    .end local v81           #uid:I
    .end local v152           #pkg:Ljava/lang/String;
    :sswitch_6a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v158

    .line 1329
    .restart local v158       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v158

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1335
    .end local v158           #reason:Ljava/lang/String;
    :sswitch_6b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v151

    .line 1337
    .restart local v151       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v151

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v165

    .line 1338
    .local v165, res:[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v165

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1340
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1344
    .end local v151           #pids:[I
    .end local v165           #res:[Landroid/os/Debug$MemoryInfo;
    :sswitch_6c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v154

    .line 1346
    .local v154, processName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 1347
    .restart local v81       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v154

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1349
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1353
    .end local v81           #uid:I
    .end local v154           #processName:Ljava/lang/String;
    :sswitch_6d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1355
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1356
    .restart local v18       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v119

    .line 1357
    .local v119, enterAnim:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v120

    .line 1358
    .local v120, exitAnim:I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v18

    move/from16 v3, v119

    move/from16 v4, v120

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1364
    .end local v18           #packageName:Ljava/lang/String;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v119           #enterAnim:I
    .end local v120           #exitAnim:I
    :sswitch_6e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1365
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v102

    .line 1366
    .local v102, areThey:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    if-eqz v102, :cond_4a

    const/4 v5, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1368
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1367
    :cond_4a
    const/4 v5, 0x0

    goto :goto_43

    .line 1372
    .end local v102           #areThey:Z
    :sswitch_6f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1373
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1375
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1379
    :sswitch_70
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1381
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v128

    .line 1382
    .local v128, isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    if-eqz v128, :cond_4b

    const/4 v5, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1384
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1383
    :cond_4b
    const/4 v5, 0x0

    goto :goto_44

    .line 1388
    .end local v49           #token:Landroid/os/IBinder;
    .end local v128           #isit:Z
    :sswitch_71
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1390
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v5, v0, :cond_4c

    const/16 v122, 0x1

    .line 1391
    .local v122, imm:Z
    :goto_45
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1393
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1390
    .end local v122           #imm:Z
    :cond_4c
    const/16 v122, 0x0

    goto :goto_45

    .line 1397
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_72
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1398
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v128

    .line 1399
    .restart local v128       #isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1400
    if-eqz v128, :cond_4d

    const/4 v5, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1400
    :cond_4d
    const/4 v5, 0x0

    goto :goto_46

    .line 1405
    .end local v128           #isit:Z
    :sswitch_73
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 1407
    .restart local v81       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v125

    .line 1408
    .local v125, initialPid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1409
    .restart local v18       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v139

    .line 1410
    .local v139, message:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v81

    move/from16 v2, v125

    move-object/from16 v3, v18

    move-object/from16 v4, v139

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1416
    .end local v18           #packageName:Ljava/lang/String;
    .end local v81           #uid:I
    .end local v125           #initialPid:I
    .end local v139           #message:Ljava/lang/String;
    :sswitch_74
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .line 1418
    .restart local v86       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v67

    .line 1419
    .local v67, type:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1420
    move-object/from16 v0, p3

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1421
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1425
    .end local v67           #type:Ljava/lang/String;
    .end local v86           #uri:Landroid/net/Uri;
    :sswitch_75
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1427
    .restart local v143       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    .line 1428
    .local v21, perm:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1429
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1430
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1434
    .end local v21           #perm:Landroid/os/IBinder;
    .end local v143           #name:Ljava/lang/String;
    :sswitch_76
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 1436
    .local v83, owner:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v84

    .line 1437
    .local v84, fromUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .line 1438
    .restart local v85       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .line 1439
    .restart local v86       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .restart local v87       #mode:I
    move-object/from16 v82, p0

    .line 1440
    invoke-virtual/range {v82 .. v87}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V

    .line 1441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1442
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1446
    .end local v83           #owner:Landroid/os/IBinder;
    .end local v84           #fromUid:I
    .end local v85           #targetPkg:Ljava/lang/String;
    .end local v86           #uri:Landroid/net/Uri;
    .end local v87           #mode:I
    :sswitch_77
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 1448
    .restart local v83       #owner:Landroid/os/IBinder;
    const/16 v86, 0x0

    .line 1449
    .restart local v86       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4e

    .line 1450
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1452
    :cond_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 1453
    .restart local v87       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    move-object/from16 v2, v86

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 1454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1455
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1459
    .end local v83           #owner:Landroid/os/IBinder;
    .end local v86           #uri:Landroid/net/Uri;
    .end local v87           #mode:I
    :sswitch_78
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v109

    .line 1461
    .local v109, callingUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .line 1462
    .restart local v85       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .line 1463
    .restart local v86       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 1464
    .local v141, modeFlags:I
    move-object/from16 v0, p0

    move/from16 v1, v109

    move-object/from16 v2, v85

    move-object/from16 v3, v86

    move/from16 v4, v141

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I

    move-result v165

    .line 1465
    .local v165, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    move-object/from16 v0, p3

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1467
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1471
    .end local v85           #targetPkg:Ljava/lang/String;
    .end local v86           #uri:Landroid/net/Uri;
    .end local v109           #callingUid:I
    .end local v141           #modeFlags:I
    .end local v165           #res:I
    :sswitch_79
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v75

    .line 1473
    .restart local v75       #process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4f

    const/16 v135, 0x1

    .line 1474
    .local v135, managed:Z
    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v77

    .line 1475
    .restart local v77       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v78

    .line 1477
    .restart local v78       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_48
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move/from16 v2, v135

    move-object/from16 v3, v77

    move-object/from16 v4, v78

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v165

    .line 1478
    .local v165, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1479
    if-eqz v165, :cond_51

    const/4 v5, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1480
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1473
    .end local v77           #path:Ljava/lang/String;
    .end local v78           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v135           #managed:Z
    .end local v165           #res:Z
    :cond_4f
    const/16 v135, 0x0

    goto :goto_47

    .line 1475
    .restart local v77       #path:Ljava/lang/String;
    .restart local v135       #managed:Z
    :cond_50
    const/16 v78, 0x0

    goto :goto_48

    .line 1479
    .restart local v78       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v165       #res:Z
    :cond_51
    const/4 v5, 0x0

    goto :goto_49

    .line 1485
    .end local v75           #process:Ljava/lang/String;
    .end local v77           #path:Ljava/lang/String;
    .end local v78           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v135           #managed:Z
    .end local v165           #res:Z
    :sswitch_7a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 1487
    .restart local v81       #uid:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v90

    check-cast v90, [Landroid/content/Intent;

    .line 1488
    .local v90, intents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v91

    .line 1489
    .local v91, resolvedTypes:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 1490
    .restart local v9       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_52

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_4a
    move-object/from16 v88, p0

    move/from16 v89, v81

    move-object/from16 v92, v9

    move-object/from16 v93, v15

    .line 1492
    invoke-virtual/range {v88 .. v93}, Landroid/app/ActivityManagerNative;->startActivitiesInPackage(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result v166

    .line 1494
    .restart local v166       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1495
    move-object/from16 v0, p3

    move/from16 v1, v166

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1496
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1490
    .end local v15           #options:Landroid/os/Bundle;
    .end local v166           #result:I
    :cond_52
    const/4 v15, 0x0

    goto :goto_4a

    .line 1501
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v81           #uid:I
    .end local v90           #intents:[Landroid/content/Intent;
    .end local v91           #resolvedTypes:[Ljava/lang/String;
    :sswitch_7b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .line 1503
    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1504
    .local v6, app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v90

    check-cast v90, [Landroid/content/Intent;

    .line 1505
    .restart local v90       #intents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v91

    .line 1506
    .restart local v91       #resolvedTypes:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 1507
    .restart local v9       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_53

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_4b
    move-object/from16 v88, p0

    move-object/from16 v89, v6

    move-object/from16 v92, v9

    move-object/from16 v93, v15

    .line 1509
    invoke-virtual/range {v88 .. v93}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result v166

    .line 1511
    .restart local v166       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    move-object/from16 v0, p3

    move/from16 v1, v166

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1513
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1507
    .end local v15           #options:Landroid/os/Bundle;
    .end local v166           #result:I
    :cond_53
    const/4 v15, 0x0

    goto :goto_4b

    .line 1518
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v90           #intents:[Landroid/content/Intent;
    .end local v91           #resolvedTypes:[Ljava/lang/String;
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_7c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v87

    .line 1520
    .restart local v87       #mode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1521
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1522
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1527
    .end local v87           #mode:I
    :sswitch_7d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 1529
    .restart local v87       #mode:I
    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1531
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1532
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1537
    .end local v87           #mode:I
    :sswitch_7e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v152

    .line 1539
    .restart local v152       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v87

    .line 1540
    .restart local v87       #mode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1541
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1542
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1547
    .end local v87           #mode:I
    .end local v152           #pkg:Ljava/lang/String;
    :sswitch_7f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v152

    .line 1549
    .restart local v152       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 1550
    .restart local v87       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1552
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1556
    .end local v87           #mode:I
    .end local v152           #pkg:Ljava/lang/String;
    :sswitch_80
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v184

    .line 1558
    .local v184, userid:I
    move-object/from16 v0, p0

    move/from16 v1, v184

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v166

    .line 1559
    .local v166, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1560
    if-eqz v166, :cond_54

    const/4 v5, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1561
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1560
    :cond_54
    const/4 v5, 0x0

    goto :goto_4c

    .line 1565
    .end local v166           #result:Z
    .end local v184           #userid:I
    :sswitch_81
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1566
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v183

    .line 1567
    .local v183, userInfo:Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1568
    const/4 v5, 0x0

    move-object/from16 v0, v183

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1569
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1574
    .end local v183           #userInfo:Landroid/content/pm/UserInfo;
    :sswitch_82
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v179

    .line 1576
    .local v179, taskId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v174

    .line 1577
    .local v174, subTaskIndex:I
    move-object/from16 v0, p0

    move/from16 v1, v179

    move/from16 v2, v174

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeSubTask(II)Z

    move-result v166

    .line 1578
    .restart local v166       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1579
    if-eqz v166, :cond_55

    const/4 v5, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1580
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1579
    :cond_55
    const/4 v5, 0x0

    goto :goto_4d

    .line 1585
    .end local v166           #result:Z
    .end local v174           #subTaskIndex:I
    .end local v179           #taskId:I
    :sswitch_83
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v179

    .line 1587
    .restart local v179       #taskId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 1588
    .restart local v59       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v179

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeTask(II)Z

    move-result v166

    .line 1589
    .restart local v166       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    if-eqz v166, :cond_56

    const/4 v5, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1591
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1590
    :cond_56
    const/4 v5, 0x0

    goto :goto_4e

    .line 1595
    .end local v59           #fl:I
    .end local v166           #result:Z
    .end local v179           #taskId:I
    :sswitch_84
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v145

    .line 1598
    .local v145, observer:Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v145

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1599
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1603
    .end local v145           #observer:Landroid/app/IProcessObserver;
    :sswitch_85
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v145

    .line 1606
    .restart local v145       #observer:Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v145

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1607
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1612
    .end local v145           #observer:Landroid/app/IProcessObserver;
    :sswitch_86
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v152

    .line 1614
    .restart local v152       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v103

    .line 1615
    .local v103, ask:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1616
    if-eqz v103, :cond_57

    const/4 v5, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1617
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1616
    :cond_57
    const/4 v5, 0x0

    goto :goto_4f

    .line 1622
    .end local v103           #ask:Z
    .end local v152           #pkg:Ljava/lang/String;
    :sswitch_87
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v152

    .line 1624
    .restart local v152       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_58

    const/16 v103, 0x1

    .line 1625
    .restart local v103       #ask:Z
    :goto_50
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1627
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1624
    .end local v103           #ask:Z
    :cond_58
    const/16 v103, 0x0

    goto :goto_50

    .line 1631
    .end local v152           #pkg:Ljava/lang/String;
    :sswitch_88
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v157

    .line 1634
    .restart local v157       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v165

    .line 1635
    .restart local v165       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1636
    if-eqz v165, :cond_59

    const/4 v5, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1637
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1636
    :cond_59
    const/4 v5, 0x0

    goto :goto_51

    .line 1641
    .end local v157           #r:Landroid/content/IIntentSender;
    .end local v165           #res:Z
    :sswitch_89
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v157

    .line 1644
    .restart local v157       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v165

    .line 1645
    .restart local v165       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1646
    if-eqz v165, :cond_5a

    const/4 v5, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1647
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1646
    :cond_5a
    const/4 v5, 0x0

    goto :goto_52

    .line 1651
    .end local v157           #r:Landroid/content/IIntentSender;
    .end local v165           #res:Z
    :sswitch_8a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1652
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/Configuration;

    .line 1653
    .local v24, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1655
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1659
    .end local v24           #config:Landroid/content/res/Configuration;
    :sswitch_8b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v151

    .line 1661
    .restart local v151       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v151

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v156

    .line 1662
    .local v156, pss:[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1663
    move-object/from16 v0, p3

    move-object/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1664
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1668
    .end local v151           #pids:[I
    .end local v156           #pss:[J
    :sswitch_8c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1669
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v142

    check-cast v142, Ljava/lang/CharSequence;

    .line 1670
    .local v142, msg:Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5b

    const/16 v101, 0x1

    .line 1671
    .local v101, always:Z
    :goto_53
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    move/from16 v2, v101

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 1672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1673
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1670
    .end local v101           #always:Z
    :cond_5b
    const/16 v101, 0x0

    goto :goto_53

    .line 1677
    .end local v142           #msg:Ljava/lang/CharSequence;
    :sswitch_8d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1678
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->dismissKeyguardOnNextActivity()V

    .line 1679
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1680
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1684
    :sswitch_8e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1686
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v116

    .line 1687
    .local v116, destAffinity:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v116

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->targetTaskAffinityMatchesActivity(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v165

    .line 1688
    .restart local v165       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1689
    if-eqz v165, :cond_5c

    const/4 v5, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1690
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1689
    :cond_5c
    const/4 v5, 0x0

    goto :goto_54

    .line 1694
    .end local v49           #token:Landroid/os/IBinder;
    .end local v116           #destAffinity:Ljava/lang/String;
    .end local v165           #res:Z
    :sswitch_8f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1696
    .restart local v49       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v177

    check-cast v177, Landroid/content/Intent;

    .line 1697
    .local v177, target:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1698
    .restart local v40       #resultCode:I
    const/16 v41, 0x0

    .line 1699
    .local v41, resultData:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5d

    .line 1700
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #resultData:Landroid/content/Intent;
    check-cast v41, Landroid/content/Intent;

    .line 1702
    .restart local v41       #resultData:Landroid/content/Intent;
    :cond_5d
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v177

    move/from16 v3, v40

    move-object/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v165

    .line 1703
    .restart local v165       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1704
    if-eqz v165, :cond_5e

    const/4 v5, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1705
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1704
    :cond_5e
    const/4 v5, 0x0

    goto :goto_55

    .line 1709
    .end local v40           #resultCode:I
    .end local v41           #resultData:Landroid/content/Intent;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v165           #res:Z
    .end local v177           #target:Landroid/content/Intent;
    :sswitch_90
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1711
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v165

    .line 1712
    .local v165, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1713
    move-object/from16 v0, p3

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1714
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1719
    .end local v49           #token:Landroid/os/IBinder;
    .end local v165           #res:I
    :sswitch_91
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1721
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v170

    .line 1722
    .local v170, splitScreenZone:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5f

    const/16 v100, 0x1

    .line 1723
    .local v100, allInTask:Z
    :goto_56
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v170

    move/from16 v3, v100

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setWindowMode(Landroid/os/IBinder;IZ)V

    .line 1724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1725
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1722
    .end local v100           #allInTask:Z
    :cond_5f
    const/16 v100, 0x0

    goto :goto_56

    .line 1729
    .end local v49           #token:Landroid/os/IBinder;
    .end local v170           #splitScreenZone:I
    :sswitch_92
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1731
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getWindowMode(Landroid/os/IBinder;)I

    move-result v162

    .line 1732
    .restart local v162       #req:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1733
    move-object/from16 v0, p3

    move/from16 v1, v162

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1734
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1737
    .end local v49           #token:Landroid/os/IBinder;
    .end local v162           #req:I
    :sswitch_93
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1739
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getWindowInfo(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v162

    .line 1740
    .local v162, req:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1741
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v162

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1742
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1745
    .end local v49           #token:Landroid/os/IBinder;
    .end local v162           #req:Landroid/os/Bundle;
    :sswitch_94
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1747
    .restart local v49       #token:Landroid/os/IBinder;
    const-class v5, Landroid/os/Bundle;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v191

    check-cast v191, Landroid/os/Bundle;

    .line 1748
    .local v191, winInfo:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v191

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setWindowInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 1749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1750
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1753
    .end local v49           #token:Landroid/os/IBinder;
    .end local v191           #winInfo:Landroid/os/Bundle;
    :sswitch_95
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityPosition()Landroid/graphics/Rect;

    move-result-object v161

    .line 1755
    .local v161, rect:Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v161

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1757
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1760
    .end local v161           #rect:Landroid/graphics/Rect;
    :sswitch_96
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1761
    new-instance v180, Ljava/util/ArrayList;

    invoke-direct/range {v180 .. v180}, Ljava/util/ArrayList;-><init>()V

    .line 1762
    .local v180, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v94

    .line 1763
    .restart local v94       #N:I
    const/16 v121, 0x0

    .restart local v121       #i:I
    :goto_57
    move/from16 v0, v121

    move/from16 v1, v94

    if-ge v0, v1, :cond_60

    .line 1764
    const-class v5, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v157

    check-cast v157, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1765
    .local v157, r:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v180

    move-object/from16 v1, v157

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1763
    add-int/lit8 v121, v121, 0x1

    goto :goto_57

    .line 1767
    .end local v157           #r:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_60
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateTasksOrder(Ljava/util/List;)V

    .line 1768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1769
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1772
    .end local v94           #N:I
    .end local v121           #i:I
    .end local v180           #tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :sswitch_97
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v95

    .line 1774
    .local v95, _direction:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v97

    .line 1776
    .local v97, _type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_61

    .line 1777
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v96

    check-cast v96, Landroid/graphics/Rect;

    .line 1781
    .local v96, _rect:Landroid/graphics/Rect;
    :goto_58
    move-object/from16 v0, p0

    move/from16 v1, v95

    move/from16 v2, v97

    move-object/from16 v3, v96

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->resizeArrangedWindow(IILandroid/graphics/Rect;)V

    .line 1782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1779
    .end local v96           #_rect:Landroid/graphics/Rect;
    :cond_61
    const/16 v96, 0x0

    .restart local v96       #_rect:Landroid/graphics/Rect;
    goto :goto_58

    .line 1786
    .end local v95           #_direction:I
    .end local v96           #_rect:Landroid/graphics/Rect;
    .end local v97           #_type:I
    :sswitch_98
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_62

    .line 1789
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v96

    check-cast v96, Landroid/graphics/Rect;

    .line 1793
    .restart local v96       #_rect:Landroid/graphics/Rect;
    :goto_59
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->checkCenterBarRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v161

    .line 1794
    .restart local v161       #rect:Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1795
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v161

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1796
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1791
    .end local v96           #_rect:Landroid/graphics/Rect;
    .end local v161           #rect:Landroid/graphics/Rect;
    :cond_62
    const/16 v96, 0x0

    .restart local v96       #_rect:Landroid/graphics/Rect;
    goto :goto_59

    .line 1803
    .end local v96           #_rect:Landroid/graphics/Rect;
    :sswitch_99
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1804
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->requestEnsureActivitiesVisible()V

    .line 1805
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1806
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1810
    :sswitch_9a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1812
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_63

    const/16 v163, 0x1

    .line 1813
    .local v163, requestFullOpaque:Z
    :goto_5a
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v163

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->requestFakeOpaqueFull(Landroid/os/IBinder;Z)V

    .line 1814
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1815
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1812
    .end local v163           #requestFullOpaque:Z
    :cond_63
    const/16 v163, 0x0

    goto :goto_5a

    .line 1821
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_9b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v185

    .line 1823
    .local v185, uss:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v150

    .line 1824
    .restart local v150       #pid:I
    move-object/from16 v0, p0

    move-wide/from16 v1, v185

    move/from16 v3, v150

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->report_memory_usage(JI)V

    .line 1825
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1826
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_56
        0x2 -> :sswitch_57
        0x3 -> :sswitch_0
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_4b
        0xb -> :sswitch_5
        0xc -> :sswitch_9
        0xd -> :sswitch_a
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x10 -> :sswitch_d
        0x11 -> :sswitch_e
        0x12 -> :sswitch_f
        0x13 -> :sswitch_10
        0x14 -> :sswitch_11
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_1d
        0x19 -> :sswitch_1e
        0x1a -> :sswitch_20
        0x1b -> :sswitch_21
        0x1c -> :sswitch_22
        0x1d -> :sswitch_23
        0x1e -> :sswitch_25
        0x1f -> :sswitch_26
        0x20 -> :sswitch_6
        0x21 -> :sswitch_2a
        0x22 -> :sswitch_2b
        0x23 -> :sswitch_2c
        0x24 -> :sswitch_2f
        0x25 -> :sswitch_30
        0x26 -> :sswitch_31
        0x28 -> :sswitch_4c
        0x29 -> :sswitch_4d
        0x2a -> :sswitch_4f
        0x2b -> :sswitch_50
        0x2c -> :sswitch_34
        0x2d -> :sswitch_35
        0x2e -> :sswitch_36
        0x2f -> :sswitch_37
        0x30 -> :sswitch_2d
        0x31 -> :sswitch_3a
        0x32 -> :sswitch_3b
        0x33 -> :sswitch_40
        0x34 -> :sswitch_41
        0x35 -> :sswitch_43
        0x36 -> :sswitch_44
        0x37 -> :sswitch_46
        0x38 -> :sswitch_47
        0x39 -> :sswitch_51
        0x3a -> :sswitch_48
        0x3b -> :sswitch_5a
        0x3c -> :sswitch_17
        0x3d -> :sswitch_33
        0x3e -> :sswitch_13
        0x3f -> :sswitch_3c
        0x40 -> :sswitch_3d
        0x41 -> :sswitch_3e
        0x42 -> :sswitch_52
        0x43 -> :sswitch_4
        0x44 -> :sswitch_53
        0x45 -> :sswitch_28
        0x46 -> :sswitch_38
        0x47 -> :sswitch_39
        0x48 -> :sswitch_32
        0x49 -> :sswitch_42
        0x4a -> :sswitch_2e
        0x4b -> :sswitch_1f
        0x4c -> :sswitch_49
        0x4d -> :sswitch_1a
        0x4e -> :sswitch_45
        0x4f -> :sswitch_5d
        0x50 -> :sswitch_54
        0x51 -> :sswitch_19
        0x52 -> :sswitch_18
        0x53 -> :sswitch_1b
        0x54 -> :sswitch_5f
        0x55 -> :sswitch_64
        0x56 -> :sswitch_60
        0x57 -> :sswitch_61
        0x58 -> :sswitch_62
        0x59 -> :sswitch_63
        0x5a -> :sswitch_65
        0x5b -> :sswitch_66
        0x5c -> :sswitch_67
        0x5d -> :sswitch_3f
        0x5f -> :sswitch_68
        0x60 -> :sswitch_69
        0x61 -> :sswitch_6a
        0x62 -> :sswitch_6b
        0x63 -> :sswitch_6c
        0x64 -> :sswitch_3
        0x65 -> :sswitch_6d
        0x66 -> :sswitch_58
        0x67 -> :sswitch_5b
        0x68 -> :sswitch_6e
        0x69 -> :sswitch_1
        0x6a -> :sswitch_8
        0x6b -> :sswitch_2
        0x6c -> :sswitch_1c
        0x6d -> :sswitch_6f
        0x6e -> :sswitch_59
        0x6f -> :sswitch_70
        0x70 -> :sswitch_71
        0x71 -> :sswitch_72
        0x72 -> :sswitch_73
        0x73 -> :sswitch_74
        0x74 -> :sswitch_75
        0x75 -> :sswitch_76
        0x76 -> :sswitch_77
        0x77 -> :sswitch_78
        0x78 -> :sswitch_79
        0x79 -> :sswitch_7b
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_12
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_86
        0x81 -> :sswitch_87
        0x82 -> :sswitch_80
        0x83 -> :sswitch_82
        0x84 -> :sswitch_83
        0x85 -> :sswitch_84
        0x86 -> :sswitch_85
        0x87 -> :sswitch_88
        0x88 -> :sswitch_8a
        0x89 -> :sswitch_8b
        0x8a -> :sswitch_8c
        0x8b -> :sswitch_8d
        0x8c -> :sswitch_5c
        0x8d -> :sswitch_24
        0x8e -> :sswitch_29
        0x8f -> :sswitch_5e
        0x90 -> :sswitch_55
        0x91 -> :sswitch_81
        0x92 -> :sswitch_8e
        0x93 -> :sswitch_8f
        0x94 -> :sswitch_4e
        0x95 -> :sswitch_7
        0x96 -> :sswitch_90
        0x97 -> :sswitch_27
        0x98 -> :sswitch_89
        0x99 -> :sswitch_9b
        0x3e9 -> :sswitch_91
        0x3ea -> :sswitch_92
        0x3eb -> :sswitch_93
        0x3ec -> :sswitch_94
        0x3ed -> :sswitch_95
        0x3ee -> :sswitch_96
        0x3ef -> :sswitch_97
        0x3f0 -> :sswitch_98
        0x7d2 -> :sswitch_99
        0x7d3 -> :sswitch_9a
    .end sparse-switch
.end method
