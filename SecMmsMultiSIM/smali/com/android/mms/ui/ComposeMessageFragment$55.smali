.class Lcom/android/mms/ui/ComposeMessageFragment$55;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->startActivityforAddMedia(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$replace:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/SharedPreferences$Editor;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6522
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$55;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$55;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$55;->val$replace:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 6525
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$55;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "location_msg_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6526
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$55;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6527
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$55;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$55;->val$replace:Z

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->startLocationMapActivity(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5600(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    .line 6528
    return-void
.end method
