.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;
.super Ljava/lang/Object;
.source "LogsDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "av"
    .parameter "v"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 855
    if-nez p3, :cond_1

    .line 856
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 858
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8$1;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 875
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 865
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8$2;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #calls: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->updateAllCheckState()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1300(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    goto :goto_0
.end method
