.class final Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogsListActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2838
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2838
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    return-void
.end method


# virtual methods
.method public onDetailClear()V
    .locals 2

    .prologue
    .line 2849
    const-string v0, "LogsListActionListener"

    const-string v1, "========== onDetailClear() =========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallDetailFragment:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$4700(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->clearDetailInfo()V

    .line 2851
    return-void
.end method

.method public onUpdateEmptyView(Z)V
    .locals 7
    .parameter "status"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2854
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v4, 0x7f090231

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2855
    .local v0, BrowserView:Landroid/view/View;
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v4, 0x7f090236

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2856
    .local v1, DetailsView:Landroid/view/View;
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v4, 0x7f09023f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2858
    .local v2, LogsEmptyView:Landroid/view/View;
    if-eqz p1, :cond_0

    .line 2859
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2860
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2861
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2868
    :goto_0
    return-void

    .line 2864
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2865
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2866
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onViewContactAction(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)V
    .locals 2
    .parameter "detailInfoData"

    .prologue
    .line 2844
    const-string v0, "LogsListActionListener"

    const-string v1, "========== onViewContactAction(Uri contactLookupUri) =========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallDetailFragment:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$4700(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->changeDetailInfo(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)V

    .line 2846
    return-void
.end method
