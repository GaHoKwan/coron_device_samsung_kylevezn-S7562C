.class public final Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;
.super Ljava/lang/Object;
.source "PhoneCallDetailsViews.java"


# instance fields
.field public final callIndi:Landroid/widget/ImageView;

.field public final groupCount:Landroid/widget/TextView;

.field public final logType:Landroid/widget/ImageView;

.field public final nameView:Landroid/widget/TextView;

.field public final numberView:Landroid/widget/TextView;

.field public final simcardImage:Landroid/widget/ImageView;

.field public final timeView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 1
    .parameter "nameView"
    .parameter "groupCount"
    .parameter "timeView"
    .parameter "numberView"
    .parameter "callIndi"
    .parameter "logType"
    .parameter "view"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    .line 42
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->groupCount:Landroid/widget/TextView;

    .line 43
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->timeView:Landroid/widget/TextView;

    .line 44
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    .line 45
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    .line 46
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    .line 47
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const v0, 0x7f09008a

    invoke-virtual {p7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->simcardImage:Landroid/widget/ImageView;

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->simcardImage:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;
    .locals 8
    .parameter "context"

    .prologue
    .line 71
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V

    return-object v0
.end method

.method public static fromView(Landroid/view/View;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;
    .locals 8
    .parameter "view"

    .prologue
    .line 61
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;

    const v1, 0x7f0900d4

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900d2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900d7

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0900d6

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0900d1

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0900d0

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V

    return-object v0
.end method
