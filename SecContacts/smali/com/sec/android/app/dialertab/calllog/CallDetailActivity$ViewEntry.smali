.class final Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public chatonCallDescription:Ljava/lang/String;

.field public chatonCallIcon:I

.field public chatonCallIntent:Landroid/content/Intent;

.field public chatonMsgDescription:Ljava/lang/String;

.field public chatonMsgIcon:I

.field public chatonMsgIntent:Landroid/content/Intent;

.field public chatonVTDescription:Ljava/lang/String;

.field public chatonVTIcon:I

.field public chatonVTIntent:Landroid/content/Intent;

.field public label:Ljava/lang/CharSequence;

.field public final primaryDescription:Ljava/lang/String;

.field public final primaryIntent:Landroid/content/Intent;

.field public quanternaryDescription:Ljava/lang/String;

.field public quanternaryIcon:I

.field public quanternaryIntent:Landroid/content/Intent;

.field public secondaryDescription:Ljava/lang/String;

.field public secondaryIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public sim2CallDescription:Ljava/lang/String;

.field public sim2CallIcon:I

.field public sim2CallIntent:Landroid/content/Intent;

.field public tertiaryDescription:Ljava/lang/String;

.field public tertiaryIcon:I

.field public tertiaryIntent:Landroid/content/Intent;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5
    .parameter "text"
    .parameter "intent"
    .parameter "description"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1745
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 1747
    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryIcon:I

    .line 1749
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1751
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 1753
    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryIcon:I

    .line 1754
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    .line 1755
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryDescription:Ljava/lang/String;

    .line 1757
    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->quanternaryIcon:I

    .line 1758
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->quanternaryIntent:Landroid/content/Intent;

    .line 1759
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->quanternaryDescription:Ljava/lang/String;

    .line 1761
    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->sim2CallIcon:I

    .line 1762
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->sim2CallIntent:Landroid/content/Intent;

    .line 1763
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->sim2CallDescription:Ljava/lang/String;

    .line 1765
    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonMsgIcon:I

    .line 1766
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonMsgIntent:Landroid/content/Intent;

    .line 1767
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonMsgDescription:Ljava/lang/String;

    .line 1769
    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonCallIcon:I

    .line 1770
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonCallIntent:Landroid/content/Intent;

    .line 1771
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonCallDescription:Ljava/lang/String;

    .line 1773
    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonVTIcon:I

    .line 1774
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonVTIntent:Landroid/content/Intent;

    .line 1775
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->chatonVTDescription:Ljava/lang/String;

    .line 1778
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    .line 1779
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    .line 1780
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->primaryDescription:Ljava/lang/String;

    .line 1782
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1783
    const-string v2, "DSDS"

    invoke-static {v2}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/plugin/dsds/PlugInDsdsService;

    .line 1784
    .local v0, dsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    invoke-virtual {v0}, Landroid/plugin/dsds/PlugInDsdsService;->getInsertedSimCount()I

    move-result v1

    .line 1786
    .local v1, simCount:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1787
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2602(Z)Z

    .line 1792
    :goto_0
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2600()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1793
    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1795
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    const-string v3, "simId"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1797
    :cond_0
    const-string v2, "CallDetailActivity"

    const-string v3, "set sim id as sim1 "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    .end local v0           #dsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    .end local v1           #simCount:I
    :cond_1
    return-void

    .line 1789
    .restart local v0       #dsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    .restart local v1       #simCount:I
    :cond_2
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2602(Z)Z

    goto :goto_0
.end method


# virtual methods
.method public setQuanternaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 1813
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->quanternaryIntent:Landroid/content/Intent;

    .line 1814
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->quanternaryDescription:Ljava/lang/String;

    .line 1815
    return-void
.end method

.method public setSecondaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 1803
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1804
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 1805
    return-void
.end method

.method public setSim2CallAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 1818
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->sim2CallIntent:Landroid/content/Intent;

    .line 1819
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->sim2CallDescription:Ljava/lang/String;

    .line 1821
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->sim2CallIntent:Landroid/content/Intent;

    const-string v1, "simId"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1823
    const-string v0, "CallDetailActivity"

    const-string v1, "setSim2CallAction sim2 dial "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :cond_0
    return-void
.end method

.method public setTertiaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    .line 1809
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryDescription:Ljava/lang/String;

    .line 1810
    return-void
.end method
