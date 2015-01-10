.class Lcom/android/contacts/group/GroupEditorFragment$1;
.super Landroid/database/ContentObserver;
.source "GroupEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$1;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 367
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 369
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$1;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #calls: Lcom/android/contacts/group/GroupEditorFragment;->updateVibrationTitle()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$000(Lcom/android/contacts/group/GroupEditorFragment;)V

    .line 370
    return-void
.end method
