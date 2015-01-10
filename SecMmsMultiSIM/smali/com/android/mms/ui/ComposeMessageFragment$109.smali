.class Lcom/android/mms/ui/ComposeMessageFragment$109;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showSmileyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 12271
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$109;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    const/4 v1, 0x0

    .line 12273
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$109;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$109;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11700(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 12274
    :cond_0
    const-string v2, "Mms/ComposeMessageFragment"

    const-string v3, "showSmileyDialog(), setViewValue return Fragment already detached. just Finish"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12288
    .end local p1
    .end local p2
    :cond_1
    :goto_0
    return v1

    .line 12277
    .restart local p1
    .restart local p2
    :cond_2
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 12278
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$109;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 12279
    .local v0, img:Landroid/graphics/drawable/Drawable;
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12280
    const/4 v1, 0x1

    goto :goto_0

    .line 12282
    .end local v0           #img:Landroid/graphics/drawable/Drawable;
    .restart local p1
    .restart local p2
    :cond_3
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 12283
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteThemeATT()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12284
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$109;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020376

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 12286
    .restart local p1
    :cond_4
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$109;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020377

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
