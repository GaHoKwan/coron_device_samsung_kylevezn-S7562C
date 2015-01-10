.class Lcom/samsung/mms/ui/SavedMsgsList$15;
.super Ljava/lang/Object;
.source "SavedMsgsList.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/SavedMsgsList;->getEditTextFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/SavedMsgsList;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$stringSize:I


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/SavedMsgsList;ILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    iput p2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$stringSize:I

    iput-object p3, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 942
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 943
    const/4 v2, 0x0

    .line 999
    :goto_0
    return-object v2

    .line 947
    :cond_0
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    rsub-int/lit8 v1, v2, 0x32

    .line 949
    .local v1, keep:I
    iget v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$stringSize:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$stringSize:I

    add-int/lit8 v2, v2, 0x32

    const/16 v3, 0xfa

    if-lt v2, v3, :cond_2

    .line 950
    iget v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$stringSize:I

    rsub-int v2, v2, 0xfa

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 951
    const-string v2, "Mms/SavedMsgsList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "k="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$stringSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    if-gtz v1, :cond_2

    .line 954
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2300(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_1

    .line 955
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    iget-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$ctx:Landroid/content/Context;

    const v5, 0x7f0a050f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0x32

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2302(Lcom/samsung/mms/ui/SavedMsgsList;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 959
    :goto_1
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2300(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 960
    const-string v2, ""

    goto :goto_0

    .line 957
    :cond_1
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2300(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$ctx:Landroid/content/Context;

    const v4, 0x7f0a050f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x32

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 964
    :cond_2
    if-gtz v1, :cond_4

    .line 965
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2300(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_3

    .line 966
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    iget-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$ctx:Landroid/content/Context;

    const v5, 0x7f0a050d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0x32

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2302(Lcom/samsung/mms/ui/SavedMsgsList;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 971
    :goto_2
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2300(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 972
    const-string v2, ""

    goto/16 :goto_0

    .line 969
    :cond_3
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2300(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$ctx:Landroid/content/Context;

    const v4, 0x7f0a050d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x32

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 973
    :cond_4
    sub-int v2, p3, p2

    if-lt v1, v2, :cond_5

    .line 974
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 975
    :cond_5
    sub-int v2, p3, p2

    if-ge v1, v2, :cond_9

    .line 977
    :try_start_0
    iget v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$stringSize:I

    const/16 v3, 0xc8

    if-le v2, v3, :cond_7

    .line 978
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2300(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_6

    .line 979
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    iget-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$ctx:Landroid/content/Context;

    const v5, 0x7f0a050f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0x32

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2302(Lcom/samsung/mms/ui/SavedMsgsList;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 992
    :goto_3
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2300(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 993
    add-int v2, p2, v1

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_0

    .line 982
    :cond_6
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2300(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$ctx:Landroid/content/Context;

    const v4, 0x7f0a050f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x32

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "Mms/SavedMsgsList"

    const-string v3, "InputFilter IndexOutOfBoundsExce"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string v2, ""

    goto/16 :goto_0

    .line 985
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2300(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_8

    .line 986
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    iget-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$ctx:Landroid/content/Context;

    const v5, 0x7f0a050d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0x32

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2302(Lcom/samsung/mms/ui/SavedMsgsList;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_3

    .line 989
    :cond_8
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2300(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList$15;->val$ctx:Landroid/content/Context;

    const v4, 0x7f0a050d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x32

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 999
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
