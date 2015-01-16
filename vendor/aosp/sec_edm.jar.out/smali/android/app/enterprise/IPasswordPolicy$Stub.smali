.class public abstract Landroid/app/enterprise/IPasswordPolicy$Stub;
.super Landroid/os/Binder;
.source "IPasswordPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IPasswordPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IPasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IPasswordPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IPasswordPolicy"

.field static final TRANSACTION_addRequiredPasswordPattern:I = 0x4

.field static final TRANSACTION_deleteAllRestrictions:I = 0x5

.field static final TRANSACTION_enforcePwdChange:I = 0xb

.field static final TRANSACTION_excludeExternalStorageForFailedPasswordsWipe:I = 0x1d

.field static final TRANSACTION_getForbiddenStrings:I = 0x12

.field static final TRANSACTION_getMaximumCharacterOccurences:I = 0x14

.field static final TRANSACTION_getMaximumCharacterSequenceLength:I = 0x18

.field static final TRANSACTION_getMaximumFailedPasswordsForDisable:I = 0xe

.field static final TRANSACTION_getMaximumNumericSequenceLength:I = 0x10

.field static final TRANSACTION_getMinimumCharacterChangeLength:I = 0x1a

.field static final TRANSACTION_getPasswordChangeTimeout:I = 0x9

.field static final TRANSACTION_getPasswordLockDelay:I = 0x2

.field static final TRANSACTION_getPinCode:I = 0x21

.field static final TRANSACTION_getRequiredPwdPatternRestrictions:I = 0x6

.field static final TRANSACTION_isChangeRequested:I = 0xa

.field static final TRANSACTION_isExternalStorageForFailedPasswordsWipeExcluded:I = 0x1e

.field static final TRANSACTION_isPasswordPatternMatched:I = 0x7

.field static final TRANSACTION_isPasswordVisibilityEnabled:I = 0x1c

.field static final TRANSACTION_isScreenLockPatternVisibilityEnabled:I = 0x16

.field static final TRANSACTION_isSimLockedByAdmin:I = 0x20

.field static final TRANSACTION_lockUnlockCorporateSimCard:I = 0x1f

.field static final TRANSACTION_setForbiddenStrings:I = 0x11

.field static final TRANSACTION_setMaximumCharacterOccurrences:I = 0x13

.field static final TRANSACTION_setMaximumCharacterSequenceLength:I = 0x17

.field static final TRANSACTION_setMaximumFailedPasswordsForDisable:I = 0xd

.field static final TRANSACTION_setMaximumNumericSequenceLength:I = 0xf

.field static final TRANSACTION_setMinimumCharacterChangeLength:I = 0x19

.field static final TRANSACTION_setPasswordChangeTimeout:I = 0x8

.field static final TRANSACTION_setPasswordLockDelay:I = 0x1

.field static final TRANSACTION_setPasswordVisibilityEnabled:I = 0x1b

.field static final TRANSACTION_setPwdChangeRequested:I = 0xc

.field static final TRANSACTION_setRequiredPasswordPattern:I = 0x3

.field static final TRANSACTION_setScreenLockPatternVisibilityEnabled:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPasswordPolicy;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.app.enterprise.IPasswordPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/app/enterprise/IPasswordPolicy;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/app/enterprise/IPasswordPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IPasswordPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 357
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v5, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->setPasswordLockDelay(I)Z

    move-result v3

    .line 54
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_2
    const-string v5, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->getPasswordLockDelay()I

    move-result v3

    .line 62
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v3           #_result:I
    :sswitch_3
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->setRequiredPasswordPattern(Ljava/lang/String;)Z

    move-result v3

    .line 72
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v3, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_4
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->addRequiredPasswordPattern(Ljava/lang/String;)Z

    move-result v3

    .line 82
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v3, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_5
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->deleteAllRestrictions()Z

    move-result v3

    .line 90
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v3, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v3           #_result:Z
    :sswitch_6
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v0, v6

    .line 99
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Ljava/lang/String;
    :cond_4
    move v0, v5

    .line 98
    goto :goto_1

    .line 106
    :sswitch_7
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IPasswordPolicy$Stub;->isPasswordPatternMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 112
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v3, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_8
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->setPasswordChangeTimeout(I)Z

    move-result v3

    .line 122
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v3, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_9
    const-string v5, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->getPasswordChangeTimeout()I

    move-result v3

    .line 130
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v3           #_result:I
    :sswitch_a
    const-string v5, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->isChangeRequested()I

    move-result v3

    .line 138
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 144
    .end local v3           #_result:I
    :sswitch_b
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->enforcePwdChange()Z

    move-result v3

    .line 146
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v3, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    .end local v3           #_result:Z
    :sswitch_c
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->setPwdChangeRequested(I)Z

    move-result v3

    .line 156
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v3, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_d
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->setMaximumFailedPasswordsForDisable(I)Z

    move-result v3

    .line 166
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v3, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 172
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_e
    const-string v5, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->getMaximumFailedPasswordsForDisable()I

    move-result v3

    .line 174
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 180
    .end local v3           #_result:I
    :sswitch_f
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->setMaximumNumericSequenceLength(I)Z

    move-result v3

    .line 184
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v3, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 190
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_10
    const-string v5, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->getMaximumNumericSequenceLength()I

    move-result v3

    .line 192
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 198
    .end local v3           #_result:I
    :sswitch_11
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 201
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPasswordPolicy$Stub;->setForbiddenStrings(Ljava/util/List;)Z

    move-result v3

    .line 202
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v3, :cond_b

    move v5, v6

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 208
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_12
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    move v0, v6

    .line 211
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v4

    .line 212
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    move v0, v5

    .line 210
    goto :goto_2

    .line 218
    :sswitch_13
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 221
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->setMaximumCharacterOccurrences(I)Z

    move-result v3

    .line 222
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    if-eqz v3, :cond_d

    move v5, v6

    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 228
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_14
    const-string v5, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->getMaximumCharacterOccurences()I

    move-result v3

    .line 230
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 236
    .end local v3           #_result:I
    :sswitch_15
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_f

    move v0, v6

    .line 239
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->setScreenLockPatternVisibilityEnabled(Z)Z

    move-result v3

    .line 240
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v3, :cond_e

    move v5, v6

    :cond_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_f
    move v0, v5

    .line 238
    goto :goto_3

    .line 246
    :sswitch_16
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->isScreenLockPatternVisibilityEnabled()Z

    move-result v3

    .line 248
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v3, :cond_10

    move v5, v6

    :cond_10
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 254
    .end local v3           #_result:Z
    :sswitch_17
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->setMaximumCharacterSequenceLength(I)Z

    move-result v3

    .line 258
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v3, :cond_11

    move v5, v6

    :cond_11
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 264
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_18
    const-string v5, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->getMaximumCharacterSequenceLength()I

    move-result v3

    .line 266
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 272
    .end local v3           #_result:I
    :sswitch_19
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 275
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->setMinimumCharacterChangeLength(I)Z

    move-result v3

    .line 276
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v3, :cond_12

    move v5, v6

    :cond_12
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 282
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_1a
    const-string v5, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->getMinimumCharacterChangeLength()I

    move-result v3

    .line 284
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 290
    .end local v3           #_result:I
    :sswitch_1b
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_14

    move v0, v6

    .line 293
    .local v0, _arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->setPasswordVisibilityEnabled(Z)Z

    move-result v3

    .line 294
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v3, :cond_13

    move v5, v6

    :cond_13
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_14
    move v0, v5

    .line 292
    goto :goto_4

    .line 300
    :sswitch_1c
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->isPasswordVisibilityEnabled()Z

    move-result v3

    .line 302
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    if-eqz v3, :cond_15

    move v5, v6

    :cond_15
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 308
    .end local v3           #_result:Z
    :sswitch_1d
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_17

    move v0, v6

    .line 311
    .restart local v0       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->excludeExternalStorageForFailedPasswordsWipe(Z)Z

    move-result v3

    .line 312
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    if-eqz v3, :cond_16

    move v5, v6

    :cond_16
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_17
    move v0, v5

    .line 310
    goto :goto_5

    .line 318
    :sswitch_1e
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->isExternalStorageForFailedPasswordsWipeExcluded()Z

    move-result v3

    .line 320
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    if-eqz v3, :cond_18

    move v5, v6

    :cond_18
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 326
    .end local v3           #_result:Z
    :sswitch_1f
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19

    move v2, v6

    .line 331
    .local v2, _arg1:Z
    :goto_6
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IPasswordPolicy$Stub;->lockUnlockCorporateSimCard(Ljava/lang/String;Z)I

    move-result v3

    .line 332
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v3           #_result:I
    :cond_19
    move v2, v5

    .line 330
    goto :goto_6

    .line 338
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_20
    const-string v7, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v3

    .line 342
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    if-eqz v3, :cond_1a

    move v5, v6

    :cond_1a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 348
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_21
    const-string v5, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 351
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->getPinCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 41
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
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
