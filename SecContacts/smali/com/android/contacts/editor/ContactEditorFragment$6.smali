.class Lcom/android/contacts/editor/ContactEditorFragment$6;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 1478
    return-void
.end method
