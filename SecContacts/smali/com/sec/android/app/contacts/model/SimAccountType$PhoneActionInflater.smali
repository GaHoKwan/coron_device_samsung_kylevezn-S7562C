.class Lcom/sec/android/app/contacts/model/SimAccountType$PhoneActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "SimAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/SimAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneActionInflater"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/model/SimAccountType$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/SimAccountType$PhoneActionInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 3
    .parameter "type"

    .prologue
    const v0, 0x7f0d0153

    const v1, 0x7f0d014e

    .line 115
    if-nez p1, :cond_0

    .line 144
    :goto_0
    :pswitch_0
    return v0

    .line 116
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 117
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 118
    goto :goto_0

    .line 120
    :cond_1
    const v0, 0x7f0d03f3

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 144
    const v0, 0x7f0d014c

    goto :goto_0

    .line 124
    :pswitch_1
    const v0, 0x7f0d014d

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 125
    goto :goto_0

    .line 126
    :pswitch_3
    const v0, 0x7f0d014f

    goto :goto_0

    .line 127
    :pswitch_4
    const v0, 0x7f0d0150

    goto :goto_0

    .line 128
    :pswitch_5
    const v0, 0x7f0d0151

    goto :goto_0

    .line 129
    :pswitch_6
    const v0, 0x7f0d0152

    goto :goto_0

    .line 131
    :pswitch_7
    const v0, 0x7f0d0154

    goto :goto_0

    .line 132
    :pswitch_8
    const v0, 0x7f0d0155

    goto :goto_0

    .line 133
    :pswitch_9
    const v0, 0x7f0d0156

    goto :goto_0

    .line 134
    :pswitch_a
    const v0, 0x7f0d0157

    goto :goto_0

    .line 135
    :pswitch_b
    const v0, 0x7f0d0158

    goto :goto_0

    .line 136
    :pswitch_c
    const v0, 0x7f0d0159

    goto :goto_0

    .line 137
    :pswitch_d
    const v0, 0x7f0d015a

    goto :goto_0

    .line 138
    :pswitch_e
    const v0, 0x7f0d015b

    goto :goto_0

    .line 139
    :pswitch_f
    const v0, 0x7f0d015c

    goto :goto_0

    .line 140
    :pswitch_10
    const v0, 0x7f0d015d

    goto :goto_0

    .line 141
    :pswitch_11
    const v0, 0x7f0d015e

    goto :goto_0

    .line 142
    :pswitch_12
    const v0, 0x7f0d015f

    goto :goto_0

    .line 143
    :pswitch_13
    const v0, 0x7f0d0160

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 110
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
