# @interface
class BaseAdapter

  # Common account methods

  # Returns the total disk space.
  # @return [Integer] The total disk space in bytes.
  def total_space; end

  # Returns the free disk space.
  # @return [Integer] The free disk space in bytes.
  def free_space; end

  # Returns the occupied disk space.
  # @return [Integer] The occupied disk space in bytes.
  def occupied_space; end

  # Returns the max file size limitation.
  # @return [Integer] The max file size in bytes.
  def max_file_size; end

  # Directory methods

  # Returns directory items.
  # @param [String] path - The path to the directory.
  # @return [DirItems] The array of dir items.
  def dir_items(path); end

  # Creates a new directory.
  # @param [String] path - The path to the directory.
  # @return [void]
  def create_dir(path); end

  # Removes the directory.
  # @param [String] path - The path to the directory.
  # @return [void]
  def remove_dir(path); end

  # Copies the directory.
  # @param [String] from_path - The path to an original directory.
  # @param [String] to_path - The path to a new directory.
  # @return [void]
  def copy_dir(from_path, to_path); end

  # Moves the directory.
  # @param [String] from_path - The path to an original directory.
  # @param [String] to_path - The path to a new directory.
  # @return [void]
  def move_dir(from_path, to_path); end

  # Renames the directory.
  # @param [String] path - The path to the directory.
  # @param [String] new_name - The new directory name.
  # @return [void]
  def rename_dir(path, new_name); end

  # Returns the meta info of directory.
  # @param [String] path - The path to the directory.
  # @return [DirMeta] The object with directory meta info.
  def dir_meta(path); end

  # Updates the meta info of directory.
  # @param [String] path - The path to the directory.
  # @param [DirMeta] meta - The object with directory meta info.
  # @return [void]
  def update_dir_meta(path, meta); end

  # File methods

  # Returns the uploading info (url, credentionals, etc).
  # @param [String] path - The path to the directory.
  # @return [UploadingUrl] The uploading info.
  def upload_file(path); end

  # Returns the downloading info (url, credentionals, etc).
  # @param [String] path - The path to the directory.
  # @return [DownloadingUrl] The downloading info.
  def download_file(path); end

  # Removes the file.
  # @param [String] path - The path to the file.
  # @return [void]
  def remove_file(path); end

  # Copies the file.
  # @param [String] from_path - The path to an original file.
  # @param [String] to_path - The path to a new file.
  # @return [void]
  def copy_file(from_path, to_path); end

  # Moves the file.
  # @param [String] from_path - The path to an original file.
  # @param [String] to_path - The path to a new file.
  # @return [void]
  def move_file(from_path, to_path); end

  # Renames the file.
  # @param [String] path - The path to the file.
  # @param [String] new_name - The new file name.
  # @return [void]
  def rename_file(path, new_name); end

  # Returns the meta info of file.
  # @param [String] path - The path to the file.
  # @return [FileMeta] The object with file meta info.
  def file_meta(path); end

  # Updates the meta info of file.
  # @param [String] path - The path to the file.
  # @param [FileMeta] meta - The object with file meta info.
  # @return [void]
  def update_file_meta(path, meta); end
end
