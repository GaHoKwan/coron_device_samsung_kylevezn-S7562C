.class public Lcom/android/phone/DsaSetting;
.super Ljava/lang/Object;
.source "DsaSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DsaSetting$1;,
        Lcom/android/phone/DsaSetting$ActivateHandler;
    }
.end annotation


# static fields
.field public static dsaCFNRcResult_SIM1:I

.field public static dsaCFNRcResult_SIM2:I

.field public static dsaCWResult_SIM1:I

.field public static dsaCWResult_SIM2:I

.field public static inputNumber1:Ljava/lang/String;

.field public static inputNumber2:Ljava/lang/String;


# instance fields
.field private bDualSet:Z

.field private checkedActive:Z

.field private mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;

.field phone_sim1:Lcom/android/internal/telephony/Phone;

.field phone_sim2:Lcom/android/internal/telephony/Phone;

.field private resultValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    sput-object v1, Lcom/android/phone/DsaSetting;->inputNumber1:Ljava/lang/String;

    .line 66
    sput-object v1, Lcom/android/phone/DsaSetting;->inputNumber2:Ljava/lang/String;

    .line 80
    sput v0, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    .line 81
    sput v0, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    .line 82
    sput v0, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    .line 83
    sput v0, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DsaSetting;->checkedActive:Z

    .line 68
    new-instance v0, Lcom/android/phone/DsaSetting$ActivateHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/DsaSetting$ActivateHandler;-><init>(Lcom/android/phone/DsaSetting;Lcom/android/phone/DsaSetting$1;)V

    iput-object v0, p0, Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;

    .line 90
    const-string v0, "DsaSetting"

    const-string v1, "DsaSetting()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/DsaSetting;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/phone/DsaSetting;->setResultVariable(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/DsaSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/phone/DsaSetting;->bDualSet:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/DsaSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/phone/DsaSetting;->bDualSet:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/DsaSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/phone/DsaSetting;->resultValue:I

    return v0
.end method

.method private dsaLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 528
    const-string v0, "DsaSetting"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-void
.end method

.method private setResultVariable(II)V
    .locals 3
    .parameter "resultType"
    .parameter "msgType"

    .prologue
    .line 495
    const-string v0, "DsaSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResultVariable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), MsgType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    sparse-switch p2, :sswitch_data_0

    .line 524
    :goto_0
    return-void

    .line 500
    :sswitch_0
    sput p1, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    goto :goto_0

    .line 505
    :sswitch_1
    sput p1, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    goto :goto_0

    .line 510
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/phone/DsaSetting;->bDualSet:Z

    if-eqz v0, :cond_0

    .line 511
    sput p1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    goto :goto_0

    .line 513
    :cond_0
    sput p1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    goto :goto_0

    .line 518
    :sswitch_3
    iget-boolean v0, p0, Lcom/android/phone/DsaSetting;->bDualSet:Z

    if-eqz v0, :cond_1

    .line 519
    sput p1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    goto :goto_0

    .line 521
    :cond_1
    sput p1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    goto :goto_0

    .line 497
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_0
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x258 -> :sswitch_3
        0x2bc -> :sswitch_2
        0x320 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public DSAactivate(Ljava/util/ArrayList;IZ)V
    .locals 8
    .parameter
    .parameter "selectedType"
    .parameter "bChecked"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p1, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v7, 0x3e8

    const/16 v6, 0x258

    const/16 v5, 0x64

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    const-string v0, "DsaSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DSAactivate("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), checked("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sput v1, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    .line 98
    sput v1, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    .line 99
    sput v1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    .line 100
    sput v1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    .line 106
    if-nez p2, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/DsaSetting;->bDualSet:Z

    .line 109
    if-eqz p3, :cond_1

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/android/phone/DsaSetting;->resultValue:I

    .line 112
    invoke-static {v1}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    .line 113
    invoke-static {v2}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    .line 116
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/phone/DsaSetting;->inputNumber1:Ljava/lang/String;

    .line 117
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/phone/DsaSetting;->inputNumber2:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inputnumber 1: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/phone/DsaSetting;->inputNumber1:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", 2: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/phone/DsaSetting;->inputNumber2:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/DsaSetting;->dsaLog(Ljava/lang/String;)V

    .line 123
    packed-switch p2, :pswitch_data_0

    .line 159
    :goto_2
    return-void

    :cond_0
    move v0, v1

    .line 106
    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 127
    :pswitch_0
    if-eqz p3, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/DsaSetting;->inputNumber2:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;

    invoke-virtual {v2, v7, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    move v2, v1

    move v4, v1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_2

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x3

    sget-object v3, Lcom/android/phone/DsaSetting;->inputNumber2:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;

    invoke-virtual {v4, v5, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    move v4, v1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_2

    .line 149
    :pswitch_1
    if-eqz p3, :cond_3

    .line 150
    iget-object v0, p0, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto :goto_2

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/DsaSetting;->mActivateHandler:Lcom/android/phone/DsaSetting$ActivateHandler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto :goto_2

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
