.class Lcom/android/contacts/group/GroupEditorFragment$4;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 580
    return-void
.end method
