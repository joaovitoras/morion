This is my first open source experience, I hope you enjoy and help improve this idea.

## Contributing

### 1. Where do I go from here?

If you've noticed a bug or have a question that doesn't belong on the
[Stack Overflow](http://stackoverflow.com/questions/tagged/morion),
[search the issue tracker](https://github.com/joaovitoras/morion/issues?q=)
to see if someone else in the community has already created a ticket.
If not, go ahead and [make one](https://github.com/joaovitoras/morion/issues/new)!

### 2. Fork & create a branch

If this is something you think you can fix, then
[fork Morion](https://help.github.com/articles/fork-a-repo)
and create a branch with a descriptive name.

A good branch name would be (where issue #325 is the ticket you're working on):

```sh
git checkout -b 325-add-japanese-translations
```

### 3. Get the test suite running
Morion don't have tests for now, feel free to start this. 😄

### 4. Did you find a bug?

* **Ensure the bug was not already reported** by [searching all
  issues](https://github.com/joaovitoras/morion/issues?q=).

* If you're unable to find an open issue addressing the problem, [open a new
  one](https://github.com/joaovitoras/morion/issues/new).  Be sure to
  include a **title and clear description**, as much relevant information as
  possible, and a **code sample** or an **executable test case** demonstrating
  the expected behavior that is not occurring.
  
### 5. Implement your fix or feature

At this point, you're ready to make your changes! Feel free to ask for help;
everyone is a beginner at first :smile_cat:

### 6. View your changes in a Rails application

So make sure to take a look at your changes in a browser.

To boot up a test Rails app:

```sh
cd test/dummy
rails s
```

You should now be able to open <http://localhost:3000/morion> in your browser.

### 7. Make a Pull Request

At this point, you should switch back to your master branch and make sure it's
up to date with Morion's master branch:

```sh
git remote add upstream git@github.com:joaovitoras/morion.git
git checkout master
git pull upstream master
```

Then update your feature branch from your local copy of master, and push it!

```sh
git checkout 325-add-japanese-translations
git rebase master
git push --set-upstream origin 325-add-japanese-translations
```

Finally, go to GitHub and
[make a Pull Request](https://help.github.com/articles/creating-a-pull-request)
:D

### 8. Keeping your Pull Request updated

If a maintainer asks you to "rebase" your PR, they're saying that a lot of code
has changed, and that you need to update your branch so it's easier to merge.

To learn more about rebasing in Git, there are a lot of
[good](http://git-scm.com/book/en/Git-Branching-Rebasing)
[resources](https://help.github.com/articles/interactive-rebase),
but here's the suggested workflow:

```sh
git checkout 325-add-japanese-translations
git pull --rebase upstream master
git push --force-with-lease 325-add-japanese-translations
```

### 9. Merging a PR (maintainers only)

A PR can only be merged into master by a maintainer if:

* It has been approved by at least two maintainers. If it was a maintainer who
  opened the PR, only one extra approval is needed.
* It has no requested changes.
* It is up to date with current master.

Any maintainer is allowed to merge a PR if all of these conditions are
met.

### 10. Shipping a release (maintainers only)

Maintainers need to do the following to push out a release:

* Make sure all pull requests are in and that changelog is current
* Update `version.rb` file and changelog with new version number
* Create a stable branch for that release:

  ```sh
  git checkout master
  git fetch morion
  git rebase morion/master
  # If the release is 2.1.x then this should be: 2-1-stable
  git checkout -b N-N-stable
  git push morion N-N-stable:N-N-stable
  ```

* `bundle exec rake release`

CONTRUBUTION based on [Active Admin Contribution file](https://github.com/activeadmin/activeadmin/blob/master/CONTRIBUTING.md)
