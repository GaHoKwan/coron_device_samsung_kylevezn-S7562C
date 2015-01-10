.class Lcom/android/mms/ui/DraftMessageManager$7;
.super Ljava/lang/Object;
.source "DraftMessageManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DraftMessageManager;->updateDeleteModeListActionBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DraftMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$7;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$7;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #calls: Lcom/android/mms/ui/DraftMessageManager;->deleteSelectedMessages()V
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$600(Lcom/android/mms/ui/DraftMessageManager;)V

    .line 1087
    return-void
.end method
