.class Lcom/android/contacts/editor/ContactEditorFragment$2;
.super Landroid/database/ContentObserver;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 864
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 867
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 868
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mVibEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mVibEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->updateView()V

    .line 870
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mVibEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->getVibUriString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCustomVibration:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$502(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 871
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCustomVibration:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$500(Lcom/android/contacts/editor/ContactEditorFragment;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->parseUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$700(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$602(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 873
    :cond_0
    return-void
.end method
