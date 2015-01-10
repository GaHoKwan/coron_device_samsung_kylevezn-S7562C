.class public Lcom/android/contacts/model/BaseAccountType$PhoneActionAltInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionAltInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v0, 0x7f0d0168

    .line 665
    if-nez p1, :cond_0

    .line 687
    :goto_0
    :pswitch_0
    return v0

    .line 666
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 687
    const v0, 0x7f0d0161

    goto :goto_0

    .line 667
    :pswitch_1
    const v0, 0x7f0d0162

    goto :goto_0

    .line 668
    :pswitch_2
    const v0, 0x7f0d0163

    goto :goto_0

    .line 669
    :pswitch_3
    const v0, 0x7f0d0164

    goto :goto_0

    .line 670
    :pswitch_4
    const v0, 0x7f0d0165

    goto :goto_0

    .line 671
    :pswitch_5
    const v0, 0x7f0d0166

    goto :goto_0

    .line 672
    :pswitch_6
    const v0, 0x7f0d0167

    goto :goto_0

    .line 674
    :pswitch_7
    const v0, 0x7f0d0169

    goto :goto_0

    .line 675
    :pswitch_8
    const v0, 0x7f0d016a

    goto :goto_0

    .line 676
    :pswitch_9
    const v0, 0x7f0d016b

    goto :goto_0

    .line 677
    :pswitch_a
    const v0, 0x7f0d016c

    goto :goto_0

    .line 678
    :pswitch_b
    const v0, 0x7f0d016d

    goto :goto_0

    .line 679
    :pswitch_c
    const v0, 0x7f0d016e

    goto :goto_0

    .line 680
    :pswitch_d
    const v0, 0x7f0d016f

    goto :goto_0

    .line 681
    :pswitch_e
    const v0, 0x7f0d0170

    goto :goto_0

    .line 682
    :pswitch_f
    const v0, 0x7f0d0171

    goto :goto_0

    .line 683
    :pswitch_10
    const v0, 0x7f0d0172

    goto :goto_0

    .line 684
    :pswitch_11
    const v0, 0x7f0d0173

    goto :goto_0

    .line 685
    :pswitch_12
    const v0, 0x7f0d0174

    goto :goto_0

    .line 686
    :pswitch_13
    const v0, 0x7f0d0175

    goto :goto_0

    .line 666
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
    .line 660
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
