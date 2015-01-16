.class Lcom/android/uiautomator/core/QueryController$1;
.super Ljava/lang/Object;
.source "QueryController.java"

# interfaces
.implements Lcom/android/uiautomator/core/UiAutomatorBridge$AccessibilityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/QueryController;-><init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/QueryController;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/QueryController;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    #getter for: Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/uiautomator/core/QueryController;->access$000(Lcom/android/uiautomator/core/QueryController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/uiautomator/core/QueryController;->mLastPackageName:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/uiautomator/core/QueryController;->access$102(Lcom/android/uiautomator/core/QueryController;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v2, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/uiautomator/core/QueryController;->mLastActivityName:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/uiautomator/core/QueryController;->access$202(Lcom/android/uiautomator/core/QueryController;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    #getter for: Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/uiautomator/core/QueryController;->access$000(Lcom/android/uiautomator/core/QueryController;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 74
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 75
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v2, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/uiautomator/core/QueryController;->access$302(Lcom/android/uiautomator/core/QueryController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 71
    :pswitch_data_0
    .packed-switch 0x20000
        :pswitch_0
    .end packed-switch
.end method
