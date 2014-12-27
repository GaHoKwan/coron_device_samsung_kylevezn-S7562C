.class Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;
.super Lcom/android/internal/telephony/IntRangeManager;
.source "SimSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellBroadcastRangeManager"
.end annotation


# instance fields
.field private mConfigList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)V
    .locals 1
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;-><init>()V

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    return-void
.end method

.method private getCBLanguagePropertyValue()I
    .locals 7

    .prologue
    .line 619
    const-string/jumbo v4, "persist.radio.icc.cb.lang"

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 621
    .local v2, property:Ljava/lang/String;
    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, propertyValue:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 624
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 634
    .local v1, langIndex:I
    :goto_0
    return v1

    .line 625
    .end local v1           #langIndex:I
    :catch_0
    move-exception v0

    .line 626
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCBLanguagePropertyValue(): PROPERTY_ICC_CB_LANGUAGE_INDEX property value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/16 v1, 0xf

    .line 628
    .restart local v1       #langIndex:I
    goto :goto_0

    .line 630
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #langIndex:I
    :cond_0
    const-string v4, "GSM"

    const-string v5, "getCBLanguagePropertyValue(): PROPERTY_ICC_CB_LANGUAGE_INDEX property value == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/16 v1, 0xf

    .restart local v1       #langIndex:I
    goto :goto_0
.end method


# virtual methods
.method protected addRange(IIZ)V
    .locals 7
    .parameter "startId"
    .parameter "endId"
    .parameter "selected"

    .prologue
    const/4 v0, -0x1

    .line 644
    const/4 v3, -0x1

    .line 646
    .local v3, langId:I
    if-ne v0, p1, :cond_1

    if-ne v0, p2, :cond_1

    .line 647
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->getCBLanguagePropertyValue()I

    move-result v3

    .line 652
    :goto_0
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRange(): langId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/16 v0, 0xf

    if-ne v3, v0, :cond_0

    .line 655
    const/16 v3, 0x100

    .line 656
    const-string v0, "GSM"

    const-string v1, "addRange(): convert langId to 256"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    return-void

    .line 649
    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method protected finishUpdate()Z
    .locals 3

    .prologue
    .line 669
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    const/4 v1, 0x1

    .line 674
    :goto_0
    return v1

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 674
    .local v0, configs:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #calls: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    invoke-static {v1, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method protected startUpdate()V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 613
    return-void
.end method
