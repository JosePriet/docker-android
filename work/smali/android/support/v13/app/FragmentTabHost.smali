.class public Landroid/support/v13/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/app/FragmentTabHost$1;,
        Landroid/support/v13/app/FragmentTabHost$SavedState;,
        Landroid/support/v13/app/FragmentTabHost$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v13/app/FragmentTabHost$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/app/FragmentManager;

.field private d:I

.field private e:Landroid/widget/TabHost$OnTabChangeListener;

.field private f:Landroid/support/v13/app/FragmentTabHost$a;

.field private g:Z


# direct methods
.method private a(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .registers 7

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 315
    const/4 v0, 0x0

    move v2, v0

    :goto_3
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_22

    .line 316
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v13/app/FragmentTabHost$a;

    .line 317
    invoke-static {v0}, Landroid/support/v13/app/FragmentTabHost$a;->b(Landroid/support/v13/app/FragmentTabHost$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 315
    :goto_1d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_3

    .line 321
    :cond_22
    if-nez v1, :cond_3d

    .line 322
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab known for tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_3d
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->f:Landroid/support/v13/app/FragmentTabHost$a;

    if-eq v0, v1, :cond_8a

    .line 325
    if-nez p2, :cond_49

    .line 326
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->c:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 328
    :cond_49
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->f:Landroid/support/v13/app/FragmentTabHost$a;

    if-eqz v0, :cond_5e

    .line 329
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->f:Landroid/support/v13/app/FragmentTabHost$a;

    invoke-static {v0}, Landroid/support/v13/app/FragmentTabHost$a;->a(Landroid/support/v13/app/FragmentTabHost$a;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 330
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->f:Landroid/support/v13/app/FragmentTabHost$a;

    invoke-static {v0}, Landroid/support/v13/app/FragmentTabHost$a;->a(Landroid/support/v13/app/FragmentTabHost$a;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 333
    :cond_5e
    if-eqz v1, :cond_88

    .line 334
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$a;->a(Landroid/support/v13/app/FragmentTabHost$a;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_8b

    .line 335
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$a;->c(Landroid/support/v13/app/FragmentTabHost$a;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$a;->d(Landroid/support/v13/app/FragmentTabHost$a;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/support/v13/app/FragmentTabHost$a;->a(Landroid/support/v13/app/FragmentTabHost$a;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 337
    iget v0, p0, Landroid/support/v13/app/FragmentTabHost;->d:I

    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$a;->a(Landroid/support/v13/app/FragmentTabHost$a;)Landroid/app/Fragment;

    move-result-object v2

    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$a;->b(Landroid/support/v13/app/FragmentTabHost$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 343
    :cond_88
    :goto_88
    iput-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->f:Landroid/support/v13/app/FragmentTabHost$a;

    .line 345
    :cond_8a
    return-object p2

    .line 339
    :cond_8b
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$a;->a(Landroid/support/v13/app/FragmentTabHost$a;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_88

    :cond_93
    move-object v0, v1

    goto :goto_1d
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 7

    .prologue
    .line 242
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 244
    invoke-virtual {p0}, Landroid/support/v13/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    .line 248
    const/4 v1, 0x0

    .line 249
    const/4 v0, 0x0

    move v2, v0

    :goto_a
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_57

    .line 250
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v13/app/FragmentTabHost$a;

    .line 251
    iget-object v4, p0, Landroid/support/v13/app/FragmentTabHost;->c:Landroid/app/FragmentManager;

    invoke-static {v0}, Landroid/support/v13/app/FragmentTabHost$a;->b(Landroid/support/v13/app/FragmentTabHost$a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/support/v13/app/FragmentTabHost$a;->a(Landroid/support/v13/app/FragmentTabHost$a;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 252
    invoke-static {v0}, Landroid/support/v13/app/FragmentTabHost$a;->a(Landroid/support/v13/app/FragmentTabHost$a;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_43

    invoke-static {v0}, Landroid/support/v13/app/FragmentTabHost$a;->a(Landroid/support/v13/app/FragmentTabHost$a;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Fragment;->isDetached()Z

    move-result v4

    if-nez v4, :cond_43

    .line 253
    invoke-static {v0}, Landroid/support/v13/app/FragmentTabHost$a;->b(Landroid/support/v13/app/FragmentTabHost$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 257
    iput-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->f:Landroid/support/v13/app/FragmentTabHost$a;

    .line 249
    :cond_43
    :goto_43
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    .line 261
    :cond_47
    if-nez v1, :cond_4f

    .line 262
    iget-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->c:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 264
    :cond_4f
    invoke-static {v0}, Landroid/support/v13/app/FragmentTabHost$a;->a(Landroid/support/v13/app/FragmentTabHost$a;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_43

    .line 271
    :cond_57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v13/app/FragmentTabHost;->g:Z

    .line 272
    invoke-direct {p0, v3, v1}, Landroid/support/v13/app/FragmentTabHost;->a(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_68

    .line 274
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 275
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->c:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 277
    :cond_68
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 281
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v13/app/FragmentTabHost;->g:Z

    .line 283
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .prologue
    .line 295
    check-cast p1, Landroid/support/v13/app/FragmentTabHost$SavedState;

    .line 296
    invoke-virtual {p1}, Landroid/support/v13/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 297
    iget-object v0, p1, Landroid/support/v13/app/FragmentTabHost$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v13/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 287
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 288
    new-instance v1, Landroid/support/v13/app/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v13/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 289
    invoke-virtual {p0}, Landroid/support/v13/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v13/app/FragmentTabHost$SavedState;->a:Ljava/lang/String;

    .line 290
    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 302
    iget-boolean v0, p0, Landroid/support/v13/app/FragmentTabHost;->g:Z

    if-eqz v0, :cond_e

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v13/app/FragmentTabHost;->a(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_e

    .line 305
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 308
    :cond_e
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->e:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_17

    .line 309
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->e:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 311
    :cond_17
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .registers 2

    .prologue
    .line 215
    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->e:Landroid/widget/TabHost$OnTabChangeListener;

    .line 216
    return-void
.end method

.method public setup()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
