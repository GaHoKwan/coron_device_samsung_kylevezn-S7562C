.class public Lcom/android/internal/telephony/SimLockInfoResult;
.super Ljava/lang/Object;
.source "SimLockInfoResult.java"


# static fields
.field private static final LOCK_ACL:I = 0xb

.field private static final LOCK_CORP_PERS:I = 0x8

.field private static final LOCK_FD:I = 0x4

.field private static final LOCK_NETWORK_PERS:I = 0x5

.field private static final LOCK_NETWORK_SUBSET_PERS:I = 0x6

.field private static final LOCK_PH_FSIM:I = 0x2

.field private static final LOCK_PH_SIM:I = 0x1

.field private static final LOCK_PIN2:I = 0x9

.field private static final LOCK_PUK2:I = 0xa

.field private static final LOCK_READY:I = 0x0

.field private static final LOCK_SIM:I = 0x3

.field private static final LOCK_SP_PERS:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "SimLockInfoResult"

.field private static final NOT_NEED:I = 0x0

.field private static final NO_SIM:I = 0x80

.field private static final PERM_BLOCKED:I = 0x5

.field private static final PIN:I = 0x1

.field private static final PIN2:I = 0x3

.field private static final PIN2_DISABLE:I = 0x6

.field private static final PUK:I = 0x2

.field private static final PUK2:I = 0x4

.field static Pin2_Retry:I

.field static Pin2_Retry_1:I

.field static Pin_Retry:I

.field static Pin_Retry_1:I

.field static Puk2_Retry:I

.field static Puk2_Retry_1:I

.field static Puk_Retry:I

.field static Puk_Retry_1:I

.field static isPermBlocked:I

.field static lockKey:I

.field static lockPin2Key:I

.field static lockPin2Key_1:I

.field static lockPinKey:I

.field static lockType:I

.field static numRetry:I

.field static num_lock_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->num_lock_type:I

    .line 47
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    .line 48
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    .line 49
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 50
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    .line 52
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key_1:I

    .line 53
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    .line 54
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 55
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 56
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 57
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 59
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry_1:I

    .line 60
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry_1:I

    .line 61
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry_1:I

    .line 62
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry_1:I

    .line 64
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->isPermBlocked:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "num_lock_type"
    .parameter "lockType"
    .parameter "lockKey"
    .parameter "numRetry"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/SimLockInfoResult;->preSimLockInfoResult(IIII)V

    .line 70
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/SimLockInfoResult;->postSimLockInfoResult(III)V

    .line 72
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .parameter "num_lock_type"
    .parameter "lockType"
    .parameter "lockKey"
    .parameter "numRetry"
    .parameter "simslot"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/SimLockInfoResult;->preSimLockInfoResult(IIII)V

    .line 78
    if-nez p5, :cond_0

    .line 79
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/SimLockInfoResult;->postSimLockInfoResult(III)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/telephony/SimLockInfoResult;->postSimLockInfoResult_1(IIII)V

    goto :goto_0
.end method

.method private postSimLockInfoResult(III)V
    .locals 3
    .parameter "lockType"
    .parameter "lockKey"
    .parameter "numRetry"

    .prologue
    const/4 v1, 0x0

    .line 98
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 99
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 156
    :goto_0
    return-void

    .line 102
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 105
    :pswitch_0
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 106
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 107
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT_NEED numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :pswitch_1
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 112
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 113
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :pswitch_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 119
    sput v1, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 120
    sput v1, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 121
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->isPermBlocked:I

    .line 122
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 130
    :cond_1
    :goto_1
    const-string v0, "SimLockInfoResult"

    const-string v1, "Permernet blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 125
    sput v1, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 126
    sput v1, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 127
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    goto :goto_1

    .line 134
    :pswitch_3
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 135
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 136
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :pswitch_4
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 142
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    .line 143
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 147
    :pswitch_5
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 148
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    .line 149
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private postSimLockInfoResult_1(IIII)V
    .locals 4
    .parameter "lockType"
    .parameter "lockKey"
    .parameter "numRetry"
    .parameter "simslot"

    .prologue
    const/4 v3, 0x0

    .line 161
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postSimLockInfoResult_1 simslot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 163
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry_1:I

    .line 216
    :goto_0
    return-void

    .line 166
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 169
    :pswitch_0
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry_1:I

    .line 170
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT_NEED numRetry1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :pswitch_1
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry_1:I

    .line 175
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 176
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN numRetry1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :pswitch_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 181
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry_1:I

    .line 182
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry_1:I

    .line 183
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->isPermBlocked:I

    .line 184
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 191
    :cond_1
    :goto_1
    const-string v0, "SimLockInfoResult"

    const-string v1, "Permernet blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 186
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry_1:I

    .line 187
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry_1:I

    .line 188
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    goto :goto_1

    .line 194
    :pswitch_3
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry_1:I

    .line 195
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 196
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK numRetry1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :pswitch_4
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry_1:I

    .line 202
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key_1:I

    .line 203
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN2 numRetry1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 207
    :pswitch_5
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry_1:I

    .line 208
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key_1:I

    .line 209
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK2 numRetry1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private preSimLockInfoResult(IIII)V
    .locals 3
    .parameter "num_lock_type"
    .parameter "lockType"
    .parameter "lockKey"
    .parameter "numRetry"

    .prologue
    .line 88
    sput p1, Lcom/android/internal/telephony/SimLockInfoResult;->num_lock_type:I

    .line 89
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    .line 90
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    .line 91
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    .line 92
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lock_key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", numRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method


# virtual methods
.method public getLockKey(I)I
    .locals 1
    .parameter "simslot"

    .prologue
    .line 274
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    return v0
.end method

.method public getLockPin2Key()I
    .locals 1

    .prologue
    .line 249
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    return v0
.end method

.method public getLockPin2Key(I)I
    .locals 3
    .parameter "simslot"

    .prologue
    .line 283
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 284
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getLockPin2Key PIN2 numRetry 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key_1:I

    .line 288
    :goto_0
    return v0

    .line 287
    :cond_0
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getLockPin2Key PIN2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    goto :goto_0
.end method

.method public getLockPinKey()I
    .locals 1

    .prologue
    .line 245
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    return v0
.end method

.method public getLockPinKey(I)I
    .locals 1
    .parameter "simslot"

    .prologue
    .line 279
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    return v0
.end method

.method public getPin2Retry()I
    .locals 1

    .prologue
    .line 258
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    return v0
.end method

.method public getPin2Retry(I)I
    .locals 3
    .parameter "simslot"

    .prologue
    .line 305
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 306
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getPinRetry .SIMSLOT2  PIN2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry_1:I

    .line 312
    :goto_0
    return v0

    .line 310
    :cond_0
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getPinRetry .SIMSLOT1 PIN2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    goto :goto_0
.end method

.method public getPinRetry()I
    .locals 1

    .prologue
    .line 253
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    return v0
.end method

.method public getPinRetry(I)I
    .locals 3
    .parameter "simslot"

    .prologue
    .line 294
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 295
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getPinRetry PIN numRetry 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry_1:I

    .line 299
    :goto_0
    return v0

    .line 298
    :cond_0
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getPinRetry PIN numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    goto :goto_0
.end method

.method public getPuk2Retry()I
    .locals 1

    .prologue
    .line 268
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    return v0
.end method

.method public getPuk2Retry(I)I
    .locals 1
    .parameter "simslot"

    .prologue
    .line 327
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 328
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry_1:I

    .line 330
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    goto :goto_0
.end method

.method public getPukRetry()I
    .locals 1

    .prologue
    .line 263
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    return v0
.end method

.method public getPukRetry(I)I
    .locals 1
    .parameter "simslot"

    .prologue
    .line 318
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 319
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry_1:I

    .line 321
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    goto :goto_0
.end method

.method public isSimBlocked()I
    .locals 1

    .prologue
    .line 338
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->isPermBlocked:I

    return v0
.end method

.method setLockInfoResult(Lcom/android/internal/telephony/SimLockInfoResult;)V
    .locals 4
    .parameter "simLockInfoResult"

    .prologue
    .line 221
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->num_lock_type:I

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sget v3, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/SimLockInfoResult;->preSimLockInfoResult(IIII)V

    .line 223
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SimLockInfoResult;->postSimLockInfoResult(III)V

    .line 225
    return-void
.end method

.method setLockInfoResult(Lcom/android/internal/telephony/SimLockInfoResult;I)V
    .locals 4
    .parameter "simLockInfoResult"
    .parameter "simslot"

    .prologue
    .line 230
    const-string v0, "SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setLockInfoResult simslot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-nez p2, :cond_0

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SimLockInfoResult;->setLockInfoResult(Lcom/android/internal/telephony/SimLockInfoResult;)V

    .line 240
    :goto_0
    return-void

    .line 235
    :cond_0
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->num_lock_type:I

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sget v3, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/SimLockInfoResult;->preSimLockInfoResult(IIII)V

    .line 237
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    sget v1, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/internal/telephony/SimLockInfoResult;->postSimLockInfoResult_1(IIII)V

    goto :goto_0
.end method
