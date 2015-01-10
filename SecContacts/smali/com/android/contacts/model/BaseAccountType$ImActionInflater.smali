.class public Lcom/android/contacts/model/BaseAccountType$ImActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLabelColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    const-string v0, "data6"

    return-object v0
.end method

.method protected getTypeColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 736
    const-string v0, "data5"

    return-object v0
.end method

.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v0, 0x7f0d0189

    .line 746
    if-nez p1, :cond_0

    .line 757
    :goto_0
    :pswitch_0
    return v0

    .line 747
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 748
    :pswitch_1
    const v0, 0x7f0d0181

    goto :goto_0

    .line 749
    :pswitch_2
    const v0, 0x7f0d0182

    goto :goto_0

    .line 750
    :pswitch_3
    const v0, 0x7f0d0183

    goto :goto_0

    .line 751
    :pswitch_4
    const v0, 0x7f0d0184

    goto :goto_0

    .line 752
    :pswitch_5
    const v0, 0x7f0d0185

    goto :goto_0

    .line 753
    :pswitch_6
    const v0, 0x7f0d0186

    goto :goto_0

    .line 754
    :pswitch_7
    const v0, 0x7f0d0187

    goto :goto_0

    .line 755
    :pswitch_8
    const v0, 0x7f0d0188

    goto :goto_0

    .line 747
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method
