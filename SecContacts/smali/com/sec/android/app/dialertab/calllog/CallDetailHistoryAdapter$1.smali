.class Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$1;
.super Ljava/lang/Object;
.source "CallDetailHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 97
    if-eqz p2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->access$000(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->access$000(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 101
    :cond_0
    return-void
.end method
