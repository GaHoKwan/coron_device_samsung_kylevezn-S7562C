.class Lcom/android/contacts/editor/RawContactEditorView$2;
.super Ljava/lang/Object;
.source "RawContactEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/RawContactEditorView;->showAddInformationPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/RawContactEditorView;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$fields:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/RawContactEditorView;Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->val$fields:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 1112
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->val$fields:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/KindSectionView;

    .line 1113
    .local v0, view:Lcom/android/contacts/editor/KindSectionView;
    const-string v1, "#phoneticName"

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1114
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    #setter for: Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z
    invoke-static {v1, v3}, Lcom/android/contacts/editor/RawContactEditorView;->access$102(Lcom/android/contacts/editor/RawContactEditorView;Z)Z

    .line 1115
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    #calls: Lcom/android/contacts/editor/RawContactEditorView;->updatePhoneticNameVisibility()V
    invoke-static {v1}, Lcom/android/contacts/editor/RawContactEditorView;->access$200(Lcom/android/contacts/editor/RawContactEditorView;)V

    .line 1117
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAutoGenerationPhoneticName"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1119
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    #getter for: Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;
    invoke-static {v1}, Lcom/android/contacts/editor/RawContactEditorView;->access$300(Lcom/android/contacts/editor/RawContactEditorView;)Lcom/android/contacts/editor/PhoneticNameEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildValues()V

    .line 1123
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    new-instance v2, Lcom/android/contacts/editor/RawContactEditorView$2$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/RawContactEditorView$2$1;-><init>(Lcom/android/contacts/editor/RawContactEditorView$2;)V

    #calls: Lcom/android/contacts/editor/RawContactEditorView;->postWhenWindowFocused(Ljava/lang/Runnable;)V
    invoke-static {v1, v2}, Lcom/android/contacts/editor/RawContactEditorView;->access$500(Lcom/android/contacts/editor/RawContactEditorView;Ljava/lang/Runnable;)V

    .line 1141
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1142
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    #getter for: Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/contacts/editor/RawContactEditorView;->access$600(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    :cond_1
    if-eqz p1, :cond_2

    .line 1145
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1147
    :cond_2
    return-void

    .line 1138
    :cond_3
    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->addItem()V

    goto :goto_0
.end method
