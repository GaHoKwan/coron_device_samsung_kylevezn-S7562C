.class Lcom/android/contacts/editor/ContactEditorFragment$9;
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
    .line 1537
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$9;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$9;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->onPhoneAlerttoneChosen()V

    .line 1541
    return-void
.end method
